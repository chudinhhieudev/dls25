.class final Lcom/firsttouchgames/dls7/OfflineScenarios26;
.super Ljava/lang/Object;
.source "OfflineScenarios26.java"


# static fields
.field private static final DIFFICULTIES:[Ljava/lang/String;


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final rules:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    const-string v0, "Hard"

    const-string v1, "VeryHard"

    const-string v2, "Easy"

    const-string v3, "Medium"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->DIFFICULTIES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ScenarioInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->rules:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->catalog:Lorg/json/JSONObject;

    return-void
.end method

.method private static addReward(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    const-string v0, "SeasonPoints"

    const-string v1, "DreamPoints"

    const-string v2, "Coins"

    const-string v3, "Gems"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static contains(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static date(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 23
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private definition(IJ)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->rules:Lorg/json/JSONObject;

    const-string v1, "Scenarios"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 27
    const-string p1, "StartDate"

    const-string v0, "StartOffsetSeconds"

    invoke-static {v2, p1, v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->date(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-string p1, "EndDate"

    const-string v0, "EndOffsetSeconds"

    invoke-static {v2, p1, v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->date(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-string p1, "EntryEndOffsetSeconds"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expired scenario"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown scenario"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private events(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-gt p2, p3, :cond_2

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->catalog:Lorg/json/JSONObject;

    const-string v0, "players"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown scenario event player"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scenario events exceed final goals"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static flag(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method private static gameplay(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    move-object/from16 v0, p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v21, "ScenarioGoals"

    const-string v22, "ScenarioAssists"

    const-string v2, "ID"

    const-string v3, "Hom"

    const-string v4, "HID"

    const-string v5, "AID"

    const-string v6, "HSc"

    const-string v7, "ASc"

    const-string v8, "HPe"

    const-string v9, "APe"

    const-string v10, "Fft"

    const-string v11, "Dif"

    const-string v12, "TSD"

    const-string v13, "IHS"

    const-string v14, "IAS"

    const-string v15, "GId"

    const-string v16, "GPo"

    const-string v17, "GDa"

    const-string v18, "AId"

    const-string v19, "APo"

    const-string v20, "ADa"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static id(Lorg/json/JSONObject;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v2, v1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v2

    :cond_0
    return v2
.end method

.method private static number(Lorg/json/JSONObject;Ljava/lang/String;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    const-string v1, "Invalid scenario "

    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    long-to-double v6, v2

    cmpl-double p0, v4, v6

    if-nez p0, :cond_0

    int-to-long v4, p2

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    int-to-long p2, p3

    cmp-long p0, v2, p2

    if-gtz p0, :cond_0

    long-to-int p0, v2

    return p0

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

    .line 15
    :cond_1
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

.method private static object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static row(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "ScI"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "ID"

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "TiP"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Com"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p1
.end method

.method private static same(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    return v2

    :cond_3
    return v1

    .line 128
    :cond_4
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v1

    .line 129
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    move v1, v2

    :goto_1
    return v1

    .line 130
    :cond_a
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method enter(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const-string v6, "ScV"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7, v7}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1e

    .line 36
    const-string v6, "ScID"

    const/4 v8, -0x1

    const v9, 0x7fffffff

    invoke-static {v2, v6, v8, v9}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->id(Lorg/json/JSONObject;)I

    move-result v10

    if-ne v6, v10, :cond_1d

    .line 37
    const-string v10, "ScD"

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v2, v10, v11, v12}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v10

    const-string v13, "ScHT"

    const v14, 0xfffe

    invoke-static {v2, v13, v11, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v13

    const-string v15, "ScAT"

    invoke-static {v2, v15, v11, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v15

    .line 38
    if-eq v13, v15, :cond_1c

    .line 39
    const-string v12, "ScH"

    invoke-static {v2, v12, v11, v7}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    const/16 v14, -0xa

    const/16 v7, 0xa

    const-string v9, "ScT"

    invoke-static {v2, v9, v14, v7}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    const-string v7, "ScHS"

    const/16 v14, 0x63

    invoke-static {v2, v7, v11, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    const-string v8, "ScAS"

    invoke-static {v2, v8, v11, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    const-string v14, "ScM"

    const/16 v3, 0x77

    invoke-static {v2, v14, v11, v3}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v14, "Sce"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v14, "local_scenarios26"

    invoke-static {v1, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const/16 v20, 0x0

    const/4 v11, -0x1

    if-ne v6, v11, :cond_0

    move-object/from16 v11, v20

    goto :goto_0

    :cond_0
    invoke-direct {v0, v6, v4, v5}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->definition(IJ)Lorg/json/JSONObject;

    move-result-object v11

    .line 41
    :goto_0
    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->rules:Lorg/json/JSONObject;

    const-string v1, "Procedural"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v14, Lcom/firsttouchgames/dls7/OfflineScenarios26;->DIFFICULTIES:[Ljava/lang/String;

    aget-object v14, v14, v10

    .line 43
    move/from16 v21, v6

    const-string v6, "PNA"

    move-object/from16 v22, v8

    const-string v8, "Coins"

    move-object/from16 v23, v8

    const-string v8, "Reward"

    if-nez v11, :cond_6

    .line 44
    const-string v7, "ScSeed"

    const v9, 0x7fffffff

    const/4 v10, 0x1

    invoke-static {v2, v7, v10, v9}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v7

    const-string v9, "ScRot"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v12, v0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->rules:Lorg/json/JSONObject;

    const-string v13, "RotationTime"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 45
    cmp-long v15, v9, v4

    if-lez v15, :cond_5

    add-long/2addr v12, v4

    const-wide/16 v24, 0x12c

    add-long v12, v12, v24

    cmp-long v12, v9, v12

    if-gtz v12, :cond_5

    .line 46
    const-string v12, "PRS"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "PRo"

    if-ne v13, v7, :cond_2

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v13, v24, v9

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v13, v4, v24

    if-ltz v13, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scenario changed before rotation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_4
    :goto_2
    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "PSe"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v12, "PCo"

    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    const-string v12, "NRe"

    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    :goto_3
    const-string v7, "PSe"

    invoke-virtual {v3, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "PlayCost"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Prizes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "MatchCoins"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 52
    move-object v12, v10

    move-object/from16 v10, v23

    goto :goto_4

    .line 45
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expired scenario rotation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_6
    const-string v14, "DiffTag"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v10, v14, :cond_1b

    const-string v10, "HomeIDs"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->contains(Lorg/json/JSONArray;I)Z

    move-result v10

    if-eqz v10, :cond_1b

    const-string v10, "AwayIDs"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->contains(Lorg/json/JSONArray;I)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v2, v12}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    const-string v12, "UserHome"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-ne v10, v12, :cond_1b

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "TargetScoreDiff"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_1b

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "InitialHomeScore"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_1b

    move-object/from16 v7, v22

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "InitialAwayScore"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_1b

    .line 54
    const-string v7, "PlayCost"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v10, v23

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 56
    :goto_4
    const-string v13, "ScRC"

    filled-new-array {v13, v10}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "ScRG"

    const-string v15, "Gems"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v6

    const-string v6, "ScRS"

    move-object/from16 v22, v12

    const-string v12, "SeasonPoints"

    filled-new-array {v6, v12}, [Ljava/lang/String;

    move-result-object v6

    const-string v4, "ScRD"

    const-string v5, "DreamPoints"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v13, v14, v6, v4}, [[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_5
    const/4 v13, 0x4

    const v14, 0xf4240

    if-ge v6, v13, :cond_8

    aget-object v13, v4, v6

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    const/4 v4, 0x0

    aget-object v7, v13, v4

    invoke-static {v2, v7, v4, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v7

    const/4 v4, 0x1

    aget-object v13, v13, v4

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v7, v4, :cond_7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scenario reward differs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_8
    move-object/from16 v24, v7

    const-string v4, "ScON"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v6}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 58
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_14

    .line 59
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScO"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v26, v4

    const-string v4, "T"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v9

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-static {v2, v4, v14, v9}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "P"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const v14, 0xfffe

    invoke-static {v2, v9, v3, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "D"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v6

    const/4 v6, 0x1

    const/16 v14, 0x63

    invoke-static {v2, v3, v6, v14}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v3

    .line 60
    iget-object v6, v0, Lcom/firsttouchgames/dls7/OfflineScenarios26;->catalog:Lorg/json/JSONObject;

    const-string v14, "players"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 62
    if-nez v11, :cond_f

    .line 66
    nop

    .line 67
    const-string v6, "GoalObjective"

    const-string v14, "AssistObjective"

    filled-new-array {v6, v14}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v20

    const/4 v14, 0x0

    :goto_7
    const/4 v0, 0x2

    if-ge v14, v0, :cond_d

    aget-object v0, v6, v14

    move-object/from16 v29, v6

    const-string v6, "Mid"

    move/from16 v30, v3

    const-string v3, "Def"

    move/from16 v31, v9

    const-string v9, "Att"

    filled-new-array {v9, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :goto_8
    const/4 v9, 0x3

    if-ge v6, v9, :cond_c

    aget-object v9, v3, v6

    .line 68
    move-object/from16 v32, v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    const-string v9, "C"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v33, v0

    const-string v0, "G"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v1

    const-string v1, "S"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v12

    const-string v12, "R"

    filled-new-array {v12, v5}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array {v9, v0, v1, v12}, [[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v9, 0x0

    :goto_9
    const/4 v12, 0x4

    if-ge v9, v12, :cond_a

    aget-object v12, v0, v9

    move-object/from16 v36, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v38, v5

    move-object/from16 v37, v13

    const/4 v13, 0x0

    aget-object v5, v12, v13

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v5, 0xf4240

    invoke-static {v2, v0, v13, v5}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x1

    aget-object v12, v12, v5

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    and-int/2addr v1, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v36

    move-object/from16 v13, v37

    move-object/from16 v5, v38

    goto :goto_9

    .line 70
    :cond_a
    move-object/from16 v38, v5

    move-object/from16 v37, v13

    if-eqz v1, :cond_b

    move-object/from16 v28, v3

    .line 67
    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v32

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v12, v35

    move-object/from16 v13, v37

    move-object/from16 v5, v38

    goto/16 :goto_8

    :cond_c
    move-object/from16 v34, v1

    move-object/from16 v38, v5

    move-object/from16 v35, v12

    move-object/from16 v37, v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v29

    move/from16 v3, v30

    move/from16 v9, v31

    goto/16 :goto_7

    .line 72
    :cond_d
    move-object/from16 v34, v1

    move/from16 v30, v3

    move-object/from16 v38, v5

    move/from16 v31, v9

    move-object/from16 v35, v12

    move-object/from16 v37, v13

    if-eqz v28, :cond_e

    move-object/from16 v0, v28

    move/from16 v5, v30

    move/from16 v3, v31

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario objective reward outside original rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_f
    move-object/from16 v34, v1

    move/from16 v30, v3

    move-object/from16 v38, v5

    move/from16 v31, v9

    move-object/from16 v35, v12

    move-object/from16 v37, v13

    const-string v0, "Objectives"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Obj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_12

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v3, v31

    if-ne v1, v3, :cond_12

    const-string v1, "Data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v5, v30

    if-ne v1, v5, :cond_12

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v28

    .line 75
    :goto_b
    const-string v1, "C"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "G"

    filled-new-array {v6, v15}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "S"

    move-object/from16 v12, v35

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v9

    const-string v13, "R"

    move-object/from16 v14, v38

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v1, v6, v9, v13}, [[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    :goto_c
    const/4 v9, 0x4

    if-ge v6, v9, :cond_11

    aget-object v13, v1, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v1

    move-object/from16 v1, v37

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v35, v12

    const/4 v1, 0x0

    aget-object v12, v13, v1

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v12, 0xf4240

    invoke-static {v2, v9, v1, v12}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v9

    const/4 v1, 0x1

    aget-object v12, v13, v1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v9, v1, :cond_10

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v28

    move-object/from16 v12, v35

    goto :goto_c

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario objective reward differs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    move-object/from16 v35, v12

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "PID"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "target"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object v6, v1

    move-object v5, v14

    move-object/from16 v3, v16

    move/from16 v4, v26

    move-object/from16 v9, v27

    move-object/from16 v1, v34

    const/4 v13, 0x4

    const v14, 0xf4240

    goto/16 :goto_6

    .line 74
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario objective changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown scenario objective player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_14
    move-object/from16 v16, v3

    move-object v1, v6

    move-object/from16 v27, v9

    if-nez v11, :cond_15

    goto :goto_d

    :cond_15
    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->row(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    :goto_d
    if-nez v11, :cond_16

    move-object/from16 v0, v17

    goto :goto_e

    :cond_16
    const-string v0, "TiP"

    :goto_e
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    if-nez v11, :cond_17

    const-string v4, "PCo"

    goto :goto_f

    :cond_17
    const-string v4, "Com"

    :goto_f
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1a

    .line 80
    const-string v4, "Cos"

    const v5, 0xf4240

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v7, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_19

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scenario-entry-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v7, p3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "scenario_entry"

    move-object/from16 v12, p1

    invoke-static {v12, v5, v4, v6, v9}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 82
    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "PMd"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "SyncedMod"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "entry_key"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "attempt"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "started"

    move-wide/from16 v12, p4

    invoke-virtual {v5, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Objectives"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "capture_binding26"

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "active"

    move-object/from16 v6, v18

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v11, :cond_18

    move-object/from16 v6, v17

    goto :goto_10

    :cond_18
    const-string v6, "TiP"

    :goto_10
    add-int/2addr v0, v5

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "CrD"

    neg-int v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "GmD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 80
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario entry price differs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario attempts exhausted or completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Defined scenario changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario teams are identical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario ID differs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing native scenario metadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finish(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;JLcom/firsttouchgames/dls7/OfflineChallenges26;)Lorg/json/JSONObject;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    const-string v1, "local_scenarios26"

    invoke-static {v7, v1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "active"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 89
    const-string v13, "extra"

    const-string v14, "request"

    const-string v15, "last"

    if-nez v12, :cond_1

    .line 92
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->gameplay(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No matching scenario attempt"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->id(Lorg/json/JSONObject;)I

    move-result v1

    const-string v2, "HID"

    const/4 v3, 0x0

    const v4, 0xfffe

    invoke-static {v8, v2, v3, v4}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v2

    const-string v5, "AID"

    invoke-static {v8, v5, v3, v4}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v4

    const-string v5, "HSc"

    const/16 v6, 0x63

    invoke-static {v8, v5, v3, v6}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v5

    move-object/from16 p3, v11

    const-string v11, "ASc"

    invoke-static {v8, v11, v3, v6}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v11

    .line 96
    const-string v6, "Hom"

    invoke-static {v8, v6}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    const-string v3, "Fft"

    move-object/from16 v18, v10

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Boolean;

    move-object/from16 v19, v15

    const/4 v15, 0x3

    const/16 v20, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v10, v3

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    invoke-static {v8, v3, v10, v15}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v10, v20

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    .line 97
    :goto_0
    const-string v3, "ScID"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1f

    const-string v3, "ScHT"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    const-string v2, "ScAT"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_1f

    const-string v2, "ScH"

    invoke-static {v12, v2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_1f

    .line 98
    const-string v2, "Dif"

    const-string v3, "ScD"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "TSD"

    const-string v4, "ScT"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v15, "IHS"

    move-object/from16 v21, v13

    const-string v13, "ScHS"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v14

    const-string v14, "IAS"

    const-string v9, "ScAS"

    filled-new-array {v14, v9}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v2, v3, v15, v14}, [[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    const/4 v14, 0x4

    if-ge v3, v14, :cond_6

    aget-object v14, v2, v3

    move-object/from16 v23, v2

    const/4 v15, 0x0

    aget-object v2, v14, v15

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v14, v15

    const/16 v15, -0xa

    move/from16 v24, v1

    const/16 v1, 0x63

    invoke-static {v8, v2, v15, v1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    move-result v2

    aget-object v14, v14, v20

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scenario result conditions differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move/from16 v24, v1

    const/16 v1, 0x63

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v23

    move/from16 v1, v24

    goto :goto_1

    .line 99
    :cond_6
    move/from16 v24, v1

    if-nez v10, :cond_8

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v5, v1, :cond_7

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v11, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scenario final score predates initial score"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_8
    :goto_3
    if-nez v10, :cond_a

    if-eqz v6, :cond_9

    sub-int v1, v5, v11

    goto :goto_4

    :cond_9
    sub-int v1, v11, v5

    :goto_4
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_a

    move/from16 v14, v20

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string v2, "Coins"

    if-nez v10, :cond_1a

    .line 102
    if-eqz v6, :cond_b

    move v3, v5

    goto :goto_6

    :cond_b
    move v3, v11

    :goto_6
    if-eqz v6, :cond_c

    move v5, v11

    :cond_c
    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    move-object v13, v9

    :goto_7
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 103
    if-le v3, v5, :cond_e

    const-string v9, "Win"

    goto :goto_8

    :cond_e
    if-ne v3, v5, :cond_f

    const-string v9, "Draw"

    goto :goto_8

    :cond_f
    const-string v9, "Lose"

    :goto_8
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "PerGoal"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    mul-int/2addr v4, v11

    add-int/2addr v9, v4

    if-nez v5, :cond_10

    const-string v4, "CleanSheet"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :goto_9
    add-int/2addr v9, v4

    .line 104
    invoke-virtual {v15, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v4, "Reward"

    if-eqz v14, :cond_11

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->addReward(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 106
    :cond_11
    const-string v5, "ScenarioGoals"

    invoke-direct {v0, v8, v5, v3}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->events(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "ScenarioAssists"

    invoke-direct {v0, v8, v6, v3}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->events(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v3

    .line 107
    const-string v6, "Objectives"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_1a

    .line 108
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_12

    const-string v16, "G"

    goto :goto_b

    :cond_12
    const-string v16, "A"

    :goto_b
    move-object/from16 v1, v16

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v16, v3

    const-string v3, "Id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "PID"

    move-object/from16 v25, v5

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_13

    move-object/from16 v17, v6

    goto/16 :goto_f

    .line 111
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Po"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v6

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v8, v0, v5, v6}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->number(Lorg/json/JSONObject;Ljava/lang/String;II)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Da"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "target"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_14

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario objective target differs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_15
    :goto_c
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    move-object/from16 v0, v25

    goto :goto_d

    :cond_16
    move-object/from16 v0, v16

    :goto_d
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v1, v13, :cond_18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v13, v6, :cond_17

    add-int/lit8 v5, v5, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    goto :goto_e

    .line 113
    :cond_18
    const-string v0, "target"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lt v5, v0, :cond_19

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->addReward(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 107
    :cond_19
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v25

    goto/16 :goto_a

    .line 116
    :cond_1a
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Gems"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scenario-result-coins-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "entry_key"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    const-string v4, "scenario_result"

    invoke-static {v7, v1, v2, v3, v4}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scenario-result-gems-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v9

    invoke-static {v7, v1, v2, v3, v4}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Sce"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move/from16 v2, v24

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    const-string v2, "PRS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ScSeed"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1c

    const-string v2, "PCo"

    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_10

    :cond_1b
    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->row(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Com"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 118
    :cond_1c
    :goto_10
    if-eqz v14, :cond_1d

    const-string v2, "NScC"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    :cond_1d
    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move v5, v14

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->scenario(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)I

    move-result v1

    if-nez v10, :cond_1e

    const-string v2, "SeasonPoints"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    move-object/from16 v4, p6

    invoke-virtual {v4, v7, v3, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    const-string v2, "DreamPoints"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {v4, v7, v3, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    .line 120
    :cond_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "CrD"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "GmD"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "RCr"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "RGe"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ScenarioWon"

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ScenarioSP"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->gameplay(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "completed"

    move-wide/from16 v3, p4

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 122
    const-string v2, "scenario_results26"

    invoke-static {v7, v2}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 97
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scenario result teams differ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
