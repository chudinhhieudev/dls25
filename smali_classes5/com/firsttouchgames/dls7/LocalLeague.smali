.class final Lcom/firsttouchgames/dls7/LocalLeague;
.super Ljava/lang/Object;
.source "LocalLeague.java"


# static fields
.field static final SLOTS:[I

.field static final TEAMS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/firsttouchgames/dls7/LocalLeague;->SLOTS:[I

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/firsttouchgames/dls7/LocalLeague;->TEAMS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0x102
        0x0
        0x6
        0xa
        0xb
        0xc
        0x10
        0x3a
        0x48
        0x49
        0x4c
        0x50
        0x68
        0x69
        0x71
        0x103
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static advance(Lorg/json/JSONObject;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    if-ltz p1, :cond_5

    const/16 v0, 0xf

    if-ge p1, v0, :cond_5

    .line 46
    const-string v0, "Mai"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalLeague;->league(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "SIn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Tea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "Fix"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 47
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    mul-int v8, p1, v5

    add-int/2addr v8, v7

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 49
    const/4 v1, 0x0

    :goto_1
    const-string v3, "Rou"

    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    const/16 v8, 0x102

    if-eq v7, v8, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_2

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "HID"

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    const-string v8, "AID"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "TID"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 50
    :cond_3
    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "NT"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "NG"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Sco"

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalLeague;->zeros(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Pen"

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalLeague;->flags(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CRo"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    sget-object p0, Lcom/firsttouchgames/dls7/LocalLeague;->SLOTS:[I

    aget p0, p0, p1

    const-string p1, "Mat"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "NFx"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    return-void

    .line 50
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing user fixture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid league round"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static array([I)Lorg/json/JSONArray;
    .locals 4

    .line 12
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static finishRound(Lorg/json/JSONObject;IIIIII)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    const-string v0, "Mai"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalLeague;->league(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CRo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalLeague;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Tea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "Tab"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Sta"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "Rou"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 110
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v10, v12, :cond_6

    .line 111
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    move/from16 v15, p1

    if-ne v12, v15, :cond_0

    move/from16 v9, p2

    if-ne v13, v9, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    move/from16 v9, p2

    :cond_1
    const/16 v16, 0x0

    .line 112
    :goto_1
    if-eqz v16, :cond_2

    move/from16 v14, p3

    move-object/from16 v17, v0

    const/4 v11, 0x1

    move/from16 v0, p4

    goto :goto_2

    :cond_2
    const/16 v14, 0x102

    if-eq v12, v14, :cond_5

    if-eq v13, v14, :cond_5

    const-string v14, "Sea"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14, v8, v12, v13}, Lcom/firsttouchgames/dls7/LocalLeague;->random(IIII)Ljava/util/Random;

    move-result-object v14

    move-object/from16 v17, v0

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move/from16 v14, v18

    .line 113
    :goto_2
    invoke-static {v5, v12, v13, v14, v0}, Lcom/firsttouchgames/dls7/LocalLeague;->score(Lorg/json/JSONArray;IIII)V

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    if-eqz v16, :cond_3

    if-lez p5, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v16, :cond_4

    if-lez p6, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 110
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, v17

    goto :goto_0

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result differs from round draw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_6
    if-eqz v11, :cond_7

    .line 116
    const-string v0, "Sco"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "Pen"

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PRo"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalLeague;->syncSimulationStats(Lorg/json/JSONObject;)V

    .line 118
    return-void

    .line 115
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing completed fixture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static flags(I)Lorg/json/JSONArray;
    .locals 3

    .line 14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static fresh(IIZ)Lorg/json/JSONObject;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    move v5, v2

    :goto_1
    const/16 v6, 0xf

    const/4 v7, 0x1

    if-ge v5, v6, :cond_5

    .line 23
    new-array v8, v4, [I

    .line 24
    move v9, v2

    :goto_2
    const/16 v10, 0x8

    if-ge v9, v10, :cond_4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    rsub-int/lit8 v11, v9, 0xf

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v12, v5, v9

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    move v12, v7

    goto :goto_3

    :cond_1
    move v12, v2

    :goto_3
    mul-int/lit8 v13, v9, 0x2

    if-eqz v12, :cond_2

    move v14, v11

    goto :goto_4

    :cond_2
    move v14, v10

    :goto_4
    aput v14, v8, v13

    add-int/2addr v13, v7

    if-eqz v12, :cond_3

    goto :goto_5

    :cond_3
    move v10, v11

    :goto_5
    aput v10, v8, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v1, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 28
    move v5, v2

    :goto_6
    if-ge v5, v6, :cond_8

    .line 29
    sub-int v8, v5, v0

    add-int/2addr v8, v6

    rem-int/2addr v8, v6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v8}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 30
    if-ne v5, v0, :cond_6

    if-eqz p2, :cond_6

    move v9, v2

    :goto_7
    if-ge v9, v4, :cond_6

    aget v10, v8, v9

    add-int/lit8 v11, v9, 0x1

    aget v12, v8, v11

    aput v12, v8, v9

    aput v10, v8, v11

    add-int/lit8 v9, v9, 0x2

    goto :goto_7

    .line 31
    :cond_6
    array-length v9, v8

    move v10, v2

    :goto_8
    if-ge v10, v9, :cond_7

    aget v11, v8, v10

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 28
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 33
    :cond_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sget-object v5, Lcom/firsttouchgames/dls7/LocalLeague;->TEAMS:[I

    array-length v8, v5

    move v9, v2

    :goto_9
    if-ge v9, v8, :cond_9

    aget v10, v5, v9

    invoke-static {v10}, Lcom/firsttouchgames/dls7/LocalLeague;->row(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 34
    :cond_9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "TID"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "Lea"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "Rou"

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "NRo"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Fix"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v6, "NT"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "NG"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "Sta"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "Tab"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "Tea"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v10, "Sco"

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v10, "Pen"

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "PRo"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Lcom/firsttouchgames/dls7/LocalLeague;->TEAMS:[I

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalLeague;->array([I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "GoF"

    invoke-static {v4}, Lcom/firsttouchgames/dls7/LocalLeague;->zeros(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "SIn"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 38
    const-string v5, "PSt"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "Ini"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Sea"

    move v6, p0

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v5, Lcom/firsttouchgames/dls7/LocalLeague;->SLOTS:[I

    aget v5, v5, v0

    const-string v6, "Mat"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Tur"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Msk"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "MsC"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v5, Lcom/firsttouchgames/dls7/LocalLeague;->TEAMS:[I

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalLeague;->array([I)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "LTr"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "Res"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Mai"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 40
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v5, "Tou"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "TIn"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "Ovr"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Sum"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    invoke-static {v1, v0}, Lcom/firsttouchgames/dls7/LocalLeague;->advance(Lorg/json/JSONObject;I)V

    return-object v1
.end method

.method private static league(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    const-string v0, "TIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Tou"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static migrate(Lorg/json/JSONObject;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    const-string v1, "Prf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Car"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_13

    const-string v2, "TIn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 59
    :cond_0
    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalLeague;->league(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 60
    const-string v4, "Tab"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "NT"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x10

    const-string v8, "local_league_version"

    const/4 v9, 0x1

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalLeague;->syncSimulationStats(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 61
    :cond_1
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 62
    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalLeague;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Mai"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "NFx"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Rou"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 63
    const-string v12, "HID"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "AID"

    const/16 v15, 0x103

    const/16 v9, 0x102

    if-ne v13, v9, :cond_2

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v15, :cond_3

    :cond_2
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v15, :cond_11

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v9, :cond_11

    .line 64
    :cond_3
    const-string v13, "Sea"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v9, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    :goto_0
    invoke-static {v14, v11, v10}, Lcom/firsttouchgames/dls7/LocalLeague;->fresh(IIZ)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/firsttouchgames/dls7/LocalLeague;->league(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    .line 67
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v15, "Sta"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 68
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v18, v8

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v9, v8, :cond_7

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v19, v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_6

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v20, v2

    const-string v2, "TID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_5

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalLeague;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v12, v9, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_2

    :cond_6
    move-object/from16 v20, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, v18

    move-object/from16 v1, v19

    goto :goto_1

    .line 69
    :cond_7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/firsttouchgames/dls7/LocalLeague;->TEAMS:[I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_a

    aget v8, v1, v4

    const/16 v9, 0x102

    if-eq v8, v9, :cond_8

    const/16 v9, 0x103

    if-eq v8, v9, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/16 v9, 0x103

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 70
    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v11, :cond_c

    const/4 v2, 0x0

    :goto_6
    const/16 v4, 0xe

    if-ge v2, v4, :cond_b

    add-int v8, v2, v1

    rem-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v9, v1

    rem-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v1, v8, v4}, Lcom/firsttouchgames/dls7/LocalLeague;->random(IIII)Ljava/util/Random;

    move-result-object v9

    move-object/from16 v16, v0

    const/4 v0, 0x4

    move/from16 v17, v11

    invoke-virtual {v9, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    invoke-virtual {v9, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v12, v8, v4, v11, v0}, Lcom/firsttouchgames/dls7/LocalLeague;->score(Lorg/json/JSONArray;IIII)V

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v16

    move/from16 v11, v17

    goto :goto_6

    :cond_b
    move-object/from16 v16, v0

    move/from16 v17, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 71
    :cond_c
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalLeague;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_d
    const-string v0, "PRo"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalLeague;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_e
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    :cond_f
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Res"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 76
    :cond_10
    const-string v0, "legacy_two_team_career"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Tou"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    move-object/from16 v2, v18

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalLeague;->syncSimulationStats(Lorg/json/JSONObject;)V

    .line 79
    return-void

    .line 63
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected legacy fixture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported legacy league size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_13
    :goto_8
    return-void
.end method

.method private static random(IIII)Ljava/util/Random;
    .locals 5

    .line 100
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p0

    const-wide/32 v3, 0xf4243

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x444c5319

    xor-long/2addr v1, v3

    int-to-long p0, p1

    const-wide/32 v3, 0x19919

    mul-long/2addr p0, v3

    xor-long/2addr p0, v1

    int-to-long v1, p2

    const-wide/32 v3, 0x10001

    mul-long/2addr v1, v3

    xor-long/2addr p0, v1

    int-to-long p2, p3

    xor-long/2addr p0, p2

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method private static row(I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Pla"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Win"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Los"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "GoF"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "GoA"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static score(Lorg/json/JSONArray;IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    nop

    .line 103
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "TID"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, p1, :cond_0

    if-eq v4, p2, :cond_0

    goto :goto_5

    :cond_0
    if-ne v4, p1, :cond_1

    move v5, p3

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    if-ne v4, p1, :cond_2

    move v4, p4

    goto :goto_2

    :cond_2
    move v4, p3

    .line 104
    :goto_2
    const-string v6, "Pla"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Win"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-le v5, v4, :cond_3

    move v10, v8

    goto :goto_3

    :cond_3
    move v10, v0

    :goto_3
    add-int/2addr v9, v10

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Los"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ge v5, v4, :cond_4

    goto :goto_4

    :cond_4
    move v8, v0

    :goto_4
    add-int/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "GoF"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "GoA"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    .line 103
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_5
    const/4 p0, 0x2

    if-ne v2, p0, :cond_6

    .line 106
    return-void

    .line 105
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing match standing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static syncProfileStats(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Car"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    const-string v0, "TIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    const-string v1, "Tou"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalLeague;->syncSimulationStats(Lorg/json/JSONObject;)V

    .line 87
    return-void

    .line 85
    :cond_3
    :goto_0
    return-void
.end method

.method static syncSimulationStats(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalLeague;->league(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "SIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    const-string v0, "Tab"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Sta"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v0, "Tea"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v7, "TID"

    const-string v8, "GoF"

    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    const v9, 0xffff

    if-gt v8, v9, :cond_1

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid simulated team goal total"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 95
    if-eqz v2, :cond_4

    move v10, v4

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 96
    :cond_4
    nop

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_6

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 97
    :cond_6
    const-string p0, "NT"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    return-void
.end method

.method private static zeros(I)Lorg/json/JSONArray;
    .locals 3

    .line 13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
