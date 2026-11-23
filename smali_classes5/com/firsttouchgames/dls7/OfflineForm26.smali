.class final Lcom/firsttouchgames/dls7/OfflineForm26;
.super Ljava/lang/Object;
.source "OfflineForm26.java"


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final durations:Lorg/json/JSONArray;

.field private final rules:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "PlayerBoosts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Form"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineForm26;->rules:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineForm26;->catalog:Lorg/json/JSONObject;

    .line 11
    const-string p2, "Stadium"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "TrainingCentreBoosts"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "FormBoostNumMatches"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineForm26;->durations:Lorg/json/JSONArray;

    .line 12
    return-void
.end method

.method static card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 15
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, p1, :cond_1

    :cond_0
    goto :goto_2

    :cond_1
    const-string v3, "PPt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Form player is not owned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static effective(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "PSt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "FSt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 21
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const-string v7, "FBG"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-ltz v6, :cond_1

    const/16 v8, 0x3e8

    if-gt v6, v8, :cond_1

    if-ltz v7, :cond_1

    if-gt v7, v8, :cond_1

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid form attribute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v2

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid form attributes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static nextMatch(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PrPl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "PPt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v1

    move v6, v5

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    goto :goto_3

    .line 53
    :cond_2
    const-string v4, "FBG"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne v5, v8, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v1

    :goto_2
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-string v5, "FSt"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "FoBL"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_5
    const-string v0, "PT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "NFB"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    return-void
.end method

.method private static raised(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    add-int/2addr v2, p1

    const/16 v3, 0x3e8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private rating(Lorg/json/JSONArray;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineForm26;->catalog:Lorg/json/JSONObject;

    const-string v1, "rating_weights"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineForm26;->catalog:Lorg/json/JSONObject;

    const-string v2, "rating_bias"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    const-wide/32 p1, 0xf4240

    div-long/2addr v2, p1

    const-wide/16 p1, 0x64

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Lev"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_11

    const/4 v4, 0x2

    if-gt v3, v4, :cond_11

    .line 31
    const-string v5, "Prf"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PT"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v0, Lcom/firsttouchgames/dls7/OfflineForm26;->rules:Lorg/json/JSONObject;

    const-string v8, "MaxPerTurn"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 32
    const-string v8, "CANTBOOST"

    const-string v9, "NFB"

    if-ltz v7, :cond_1

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-ge v10, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v8}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    :goto_0
    const-string v7, "Sta"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "Fac"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-ltz v7, :cond_10

    iget-object v11, v0, Lcom/firsttouchgames/dls7/OfflineForm26;->durations:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_10

    .line 34
    iget-object v11, v0, Lcom/firsttouchgames/dls7/OfflineForm26;->durations:Lorg/json/JSONArray;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    iget-object v11, v0, Lcom/firsttouchgames/dls7/OfflineForm26;->rules:Lorg/json/JSONObject;

    const-string v12, "RatingBoost"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    iget-object v12, v0, Lcom/firsttouchgames/dls7/OfflineForm26;->rules:Lorg/json/JSONObject;

    const-string v13, "Cost"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 35
    const/4 v13, 0x1

    if-lt v7, v13, :cond_f

    const/16 v14, 0x64

    if-gt v7, v14, :cond_f

    if-lt v11, v13, :cond_f

    if-gt v11, v14, :cond_f

    const-string v15, "NGa"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v7, :cond_f

    const-string v15, "Rat"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v11, :cond_f

    .line 36
    const-string v15, "Stf"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v4, 0x3

    if-ne v13, v4, :cond_e

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-ltz v4, :cond_e

    .line 37
    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v10

    :goto_1
    const-string v13, "Cr"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "Gm"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 38
    if-ltz v13, :cond_d

    if-ltz v14, :cond_d

    move-object/from16 v18, v8

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-ne v13, v8, :cond_3

    neg-int v8, v12

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eq v14, v8, :cond_4

    :cond_3
    if-eqz v4, :cond_d

    if-nez v13, :cond_d

    if-nez v14, :cond_d

    .line 39
    :cond_4
    const-string v8, "PID"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineForm26;->card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v12, "PSt"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflineForm26;->effective(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v10

    move/from16 p2, v2

    invoke-virtual {v0, v8}, Lcom/firsttouchgames/dls7/OfflineForm26;->rating(Lorg/json/JSONObject;)I

    move-result v2

    add-int/2addr v11, v2

    move-object/from16 v19, v5

    const/16 v5, 0x64

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 40
    if-le v5, v2, :cond_c

    .line 43
    const/16 v11, 0x3e8

    move/from16 v17, v2

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v20, v6

    const-string v6, "PGP"

    if-ge v2, v11, :cond_6

    add-int v21, v2, v11

    move/from16 v22, v11

    const/16 v16, 0x2

    div-int/lit8 v11, v21, 0x2

    move-object/from16 v21, v9

    invoke-static {v10, v11}, Lcom/firsttouchgames/dls7/OfflineForm26;->raised(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v9, v6}, Lcom/firsttouchgames/dls7/OfflineForm26;->rating(Lorg/json/JSONArray;I)I

    move-result v6

    if-lt v6, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v11, 0x1

    move/from16 v11, v22

    :goto_3
    move-object/from16 v6, v20

    move-object/from16 v9, v21

    goto :goto_2

    .line 44
    :cond_6
    move-object/from16 v21, v9

    invoke-static {v10, v2}, Lcom/firsttouchgames/dls7/OfflineForm26;->raised(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    :goto_4
    const/16 v11, 0xa

    if-ge v10, v11, :cond_7

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    sub-int v11, v11, v16

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 45
    :cond_7
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v2, v6}, Lcom/firsttouchgames/dls7/OfflineForm26;->rating(Lorg/json/JSONArray;I)I

    move-result v2

    if-lt v2, v5, :cond_b

    .line 46
    if-eqz v4, :cond_8

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v15, v3, v1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-form"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "form_boost"

    invoke-static {v1, v2, v13, v14, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    :goto_5
    const-string v1, "FSt"

    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FBG"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FoBL"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Onb"

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "UFb"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "NumPlayers"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move/from16 v5, p2

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    const-string v5, "PlayerIDs"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Breakthrough"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v4, :cond_9

    move v2, v5

    goto :goto_6

    :cond_9
    neg-int v2, v13

    :goto_6
    const-string v6, "CrD"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v4, :cond_a

    move v10, v5

    goto :goto_7

    :cond_a
    neg-int v10, v14

    :goto_7
    const-string v2, "GmD"

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FromInventory"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FormRatingBefore"

    move/from16 v4, v17

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FormRatingAfter"

    invoke-virtual {v0, v8}, Lcom/firsttouchgames/dls7/OfflineForm26;->rating(Lorg/json/JSONObject;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FormGames"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FormLevel"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 45
    :cond_b
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_c
    move-object/from16 v2, v18

    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Form price changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid form inventory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Form quote changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid training level"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid form level"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method rating(Lorg/json/JSONObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineForm26;->effective(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "PGP"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/firsttouchgames/dls7/OfflineForm26;->rating(Lorg/json/JSONArray;I)I

    move-result p1

    return p1
.end method
