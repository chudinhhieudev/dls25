.class final Lcom/firsttouchgames/dls7/OfflineStadium26;
.super Ljava/lang/Object;
.source "OfflineStadium26.java"


# static fields
.field static final BASE:I = 0x8000001

.field private static final BLOCKS:[[I

.field private static final FACILITIES:[Ljava/lang/String;

.field private static final PITCH:[Ljava/lang/String;


# instance fields
.field private final rules:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0xf

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0xe

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x11

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x10

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    const/16 v3, 0xb

    const/16 v4, 0x15

    const/16 v5, 0x9

    const/16 v6, 0x12

    const/16 v7, 0x13

    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x19

    const/16 v5, 0x1a

    const/16 v6, 0x16

    const/16 v7, 0x17

    const/16 v8, 0x18

    filled-new-array {v6, v7, v8, v4, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->BLOCKS:[[I

    .line 10
    const-string v5, "RecruitmentCentre"

    const-string v6, "FanZoneCentre"

    const-string v1, "TrainingCentre"

    const-string v2, "MedicalCentre"

    const-string v3, "AccomodationCentre"

    const-string v4, "CommercialCentre"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->FACILITIES:[Ljava/lang/String;

    .line 11
    const-string v7, "Diamond"

    const-string v8, "Circles"

    const-string v1, ""

    const-string v2, "Hstripe"

    const-string v3, "Vstripe"

    const-string v4, "Check"

    const-string v5, "Diaga"

    const-string v6, "Diagb"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->PITCH:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x8
        0xc
        0xd
        0x14
        0xa
    .end array-data
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Stadium"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineStadium26;->rules:Lorg/json/JSONObject;

    return-void
.end method

.method static block(I)I
    .locals 5

    .line 13
    sget-object v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->BLOCKS:[[I

    aget-object p0, v0, p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static integer(Lorg/json/JSONObject;Ljava/lang/String;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    const-string v1, "Invalid "

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    int-to-long p2, p3

    cmp-long p0, v2, p2

    if-gtz p0, :cond_2

    long-to-int p0, v2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static mergeSelection(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    const-string v0, "USt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 25
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result p1

    .line 26
    if-ltz p1, :cond_2

    invoke-static {p0, p1}, Lcom/firsttouchgames/dls7/OfflineStadium26;->ownsUnique(Lorg/json/JSONObject;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stadium is not owned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    return-void
.end method

.method private static ownUnique(Lorg/json/JSONObject;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "USuB"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    ushr-int/lit8 v0, p1, 0x5

    .line 20
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    and-int/lit8 p1, p1, 0x1f

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 22
    return-void
.end method

.method static ownsUnique(Lorg/json/JSONObject;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    const-string v0, "USuB"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    ushr-int/lit8 v0, p1, 0x5

    .line 16
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    and-int/lit8 p0, p1, 0x1f

    const-wide/16 v2, 0x1

    shl-long p0, v2, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Prf"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Sta"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "Fac"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "ScM"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 32
    const-string v8, "USui"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "GmD"

    const-string v11, "CrD"

    const-string v12, "STADIUMEDIT"

    const-string v13, "stadium-"

    const-string v14, "USt"

    const-string v15, "STCost"

    move-object/from16 v16, v6

    const-string v6, "PTIndex"

    move-object/from16 v17, v10

    const-string v10, "SC"

    move-object/from16 v18, v11

    const-string v11, "FCIndex"

    move-object/from16 v19, v5

    if-eqz v9, :cond_6

    .line 33
    iget-object v9, v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->rules:Lorg/json/JSONObject;

    const-string v5, "UniqueStadiumCosts"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v8, v0, v9}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v8

    .line 34
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    move-object/from16 v20, v7

    const-string v7, "Mixed unique stadium edit"

    if-ge v0, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v20

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 36
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const v5, -0x77359400

    const v6, 0x77359400

    invoke-static {v2, v15, v5, v6}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v2

    const-string v5, "Cost"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v8}, Lcom/firsttouchgames/dls7/OfflineStadium26;->ownsUnique(Lorg/json/JSONObject;I)Z

    move-result v6

    .line 37
    if-eqz v6, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-ne v2, v7, :cond_4

    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    const-string v5, "IapID"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v0, v12}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 40
    invoke-static {v4, v8}, Lcom/firsttouchgames/dls7/OfflineStadium26;->ownUnique(Lorg/json/JSONObject;I)V

    invoke-virtual {v4, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v7, v19

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    neg-int v2, v5

    move-object/from16 v5, v18

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    neg-int v0, v0

    move-object/from16 v9, v17

    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "UniqueStadiumIndex"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 37
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unique stadium price changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_6
    move-object/from16 v20, v7

    move-object/from16 v9, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v18, v9

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xff

    move-object/from16 v19, v10

    const/4 v10, 0x0

    invoke-static {v2, v8, v10, v9}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v8

    move-object/from16 v9, v20

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    const/4 v8, 0x1

    const/16 v17, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v19, v10

    move-object/from16 v9, v20

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_2

    .line 47
    :cond_8
    if-eqz v8, :cond_a

    .line 50
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->rules:Lorg/json/JSONObject;

    const-string v10, "SectionCosts"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Ends"

    move/from16 v19, v8

    const-string v8, "Sides"

    move-object/from16 v20, v5

    const-string v5, "Corners"

    filled-new-array {v5, v10, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v21, v7

    const/4 v7, 0x3

    if-ge v8, v7, :cond_9

    aget-object v7, v5, v8

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v22, v5

    const-string v5, "MaxCost"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v23, v9

    const-string v9, "RoofPercentExtraCost"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    mul-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x64

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, v21

    move-object/from16 v5, v22

    move-object/from16 v9, v23

    goto :goto_4

    .line 51
    :cond_9
    mul-int/lit8 v10, v10, 0x8

    const/4 v5, 0x0

    invoke-static {v2, v15, v5, v10}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v7

    .line 52
    const/4 v5, -0x1

    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    .line 47
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v19, v8

    const/4 v7, 0x0

    .line 54
    :goto_5
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v9, "FCFormationGroup"

    const-string v10, "Frm"

    if-eqz v5, :cond_11

    .line 55
    sget-object v5, Lcom/firsttouchgames/dls7/OfflineStadium26;->FACILITIES:[Ljava/lang/String;

    array-length v5, v5

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    const/4 v15, 0x0

    invoke-static {v2, v11, v15, v5}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v5

    iget-object v8, v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->rules:Lorg/json/JSONObject;

    const-string v15, "FacilityCosts"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    sget-object v15, Lcom/firsttouchgames/dls7/OfflineStadium26;->FACILITIES:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    sub-int/2addr v15, v14

    const-string v14, "FCLevel"

    const/4 v1, 0x0

    invoke-static {v2, v14, v1, v15}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v14

    .line 56
    move-object/from16 v15, v16

    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    if-ne v1, v14, :cond_10

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v16, v12

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    neg-int v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 57
    const-string v8, "FCCoins"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    goto :goto_6

    :cond_b
    const-string v8, "FCCredits"

    .line 58
    :goto_6
    move-object/from16 v23, v13

    const v3, 0x186a0

    const/4 v13, 0x0

    invoke-static {v2, v8, v13, v3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v12, :cond_f

    const-string v8, "FCGems"

    invoke-static {v2, v8, v13, v3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v1, :cond_f

    .line 59
    if-nez v5, :cond_d

    const/4 v3, 0x4

    invoke-static {v2, v9, v13, v3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->block(I)I

    move-result v3

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    and-int v13, v8, v3

    if-eq v13, v3, :cond_c

    or-int/2addr v3, v8

    const v8, 0x8000001

    or-int/2addr v3, v8

    invoke-virtual {v4, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Formation block already unlocked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_d
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 61
    :goto_7
    const/4 v3, 0x1

    add-int/2addr v14, v3

    invoke-virtual {v15, v5, v14}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/2addr v7, v12

    const/4 v3, 0x0

    add-int/2addr v1, v3

    const/16 v17, 0x1

    goto :goto_8

    .line 60
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Formation block requires training centre"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Facility price changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Facility level changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_11
    move-object/from16 v16, v12

    move-object/from16 v23, v13

    const/4 v1, 0x0

    .line 63
    :goto_8
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 64
    sget-object v3, Lcom/firsttouchgames/dls7/OfflineStadium26;->PITCH:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v8, 0x0

    invoke-static {v2, v6, v8, v3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_12

    const/4 v6, 0x0

    goto :goto_9

    :cond_12
    iget-object v6, v0, Lcom/firsttouchgames/dls7/OfflineStadium26;->rules:Lorg/json/JSONObject;

    const-string v8, "PitchPatternCosts"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineStadium26;->PITCH:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_9
    const-string v8, "PTCost"

    const v12, 0x186a0

    const/4 v13, 0x0

    invoke-static {v2, v8, v13, v12}, Lcom/firsttouchgames/dls7/OfflineStadium26;->integer(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v6, :cond_13

    const-string v8, "PtP"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/2addr v7, v6

    move v3, v5

    goto :goto_a

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pitch price changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_14
    move/from16 v5, v17

    move/from16 v3, v19

    .line 66
    :goto_a
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 67
    :cond_15
    if-eqz v5, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    invoke-static {v4, v2, v7, v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 68
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, v21

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    neg-int v3, v7

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    neg-int v1, v1

    move-object/from16 v3, v18

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 67
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty stadium edit"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid formation upgrade"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
