.class final Lcom/firsttouchgames/dls7/OfflineCoaches26;
.super Ljava/lang/Object;
.source "OfflineCoaches26.java"


# static fields
.field private static final INVENTORY:[Ljava/lang/String;

.field private static final RULES:[Ljava/lang/String;

.field private static final STATS:[[I


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final random:Ljava/util/Random;

.field private final rules:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    const-string v0, "CoachFitness"

    const-string v1, "CoachSpecial"

    const-string v2, "CoachGoalkeeping"

    const-string v3, "CoachTechnical"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->RULES:[Ljava/lang/String;

    const-string v0, "NFC"

    const-string v1, "NCC"

    const-string v2, "NGC"

    const-string v3, "NTC"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->INVENTORY:[Ljava/lang/String;

    .line 10
    const/16 v0, 0x8

    const/16 v1, 0x9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x5

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->STATS:[[I

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->random:Ljava/util/Random;

    .line 13
    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rules:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->catalog:Lorg/json/JSONObject;

    return-void
.end method

.method private canStep(Lorg/json/JSONObject;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    const-string v0, "PSt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 37
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result p1

    if-gt v2, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 18
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PPt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "PID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing owned coaching card"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static ceiling(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    const-string v0, "IRa"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x270f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static contains(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
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

.method private eligible(Lorg/json/JSONObject;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->catalog:Lorg/json/JSONObject;

    const-string v1, "players"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "special_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    const-string v1, "PGP"

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    if-eqz v0, :cond_9

    if-ne v0, v2, :cond_3

    goto/16 :goto_4

    :cond_0
    if-nez v0, :cond_9

    if-nez p2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    if-eq v0, v6, :cond_3

    goto :goto_4

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result v6

    if-lt v0, v6, :cond_4

    return v4

    .line 32
    :cond_4
    const-string v0, "PSt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-ne p2, v5, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/firsttouchgames/dls7/OfflineCoaches26;->STATS:[[I

    aget-object p1, p1, v4

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput v4, p1, v4

    aput v3, p1, v3

    const/4 p2, 0x2

    aput p2, p1, p2

    aput v5, p1, v5

    const/4 p2, 0x4

    aput p2, p1, p2

    const/4 p2, 0x5

    aput p2, p1, p2

    const/4 p2, 0x6

    aput p2, p1, p2

    aput v2, p1, v2

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/firsttouchgames/dls7/OfflineCoaches26;->STATS:[[I

    aget-object p1, p1, p2

    .line 33
    :goto_2
    array-length p2, p1

    move v1, v4

    :goto_3
    if-ge v1, p2, :cond_8

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_7

    return v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return v4

    .line 30
    :cond_9
    :goto_4
    return v4
.end method

.method private improve(Lorg/json/JSONObject;Ljava/util/List;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const-string v0, "PSt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 41
    :goto_0
    const/4 v3, 0x1

    if-lez p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v4

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 42
    nop

    .line 43
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 44
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v7

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result v8

    if-lt v7, v8, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->canStep(Lorg/json/JSONObject;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    .line 46
    :cond_1
    goto :goto_1

    .line 47
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result p3

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result v4

    if-ge p3, v4, :cond_9

    .line 54
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->canStep(Lorg/json/JSONObject;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    goto :goto_3

    .line 55
    :cond_5
    if-nez v1, :cond_9

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, -0x1

    const v1, 0x7fffffff

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_7

    :cond_6
    :goto_5
    goto :goto_4

    :cond_7
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    if-ge v6, v1, :cond_6

    move p3, v4

    move v1, v6

    goto :goto_5

    .line 57
    :cond_8
    if-ltz p3, :cond_9

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    .line 60
    :cond_9
    return v2
.end method

.method private static profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private retrainingSession(Lorg/json/JSONObject;IILorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    const-string v0, "coaching_session26"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "receipts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PERMANENTBOOST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v1, "CoachType"

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_1

    const-string v1, "CoachLevel"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p3, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "PlayerIDs"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    invoke-static {v1, p4}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->sameIDs(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "level"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string p3, "ids"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "next"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 78
    :cond_3
    goto :goto_0

    .line 79
    :cond_4
    new-instance p1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p2, "CANTBOOST"

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "DrT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Man"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "LU"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static sameIDs(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 64
    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "CoT"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Lev"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 95
    if-ltz v3, :cond_36

    const/4 v5, 0x3

    if-gt v3, v5, :cond_36

    if-ltz v4, :cond_36

    const/4 v6, 0x2

    if-gt v4, v6, :cond_36

    .line 96
    const-string v7, "ReI"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 97
    :goto_0
    const-string v12, "CANTBOOST"

    if-lt v7, v8, :cond_35

    if-eqz v11, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v12

    goto/16 :goto_1d

    :cond_2
    :goto_1
    const-string v13, "PID"

    if-nez v11, :cond_3

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_1

    .line 98
    :cond_3
    iget-object v14, v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rules:Lorg/json/JSONObject;

    const-string v15, "PlayerBoosts"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Permanent"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    sget-object v15, Lcom/firsttouchgames/dls7/OfflineCoaches26;->RULES:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 99
    const-string v8, "NP"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "StatBoost"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 100
    if-eqz v8, :cond_34

    .line 101
    if-ltz v8, :cond_33

    const-string v10, "NumPlayers"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-gt v8, v6, :cond_33

    const-string v6, "SBo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_33

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v10

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v10

    .line 103
    move/from16 v18, v9

    const-string v9, "ids"

    move-object/from16 v19, v14

    const-string v14, "next"

    move-object/from16 v20, v6

    const-string v6, "level"

    move-object/from16 v21, v12

    const-string v12, "type"

    move-object/from16 v22, v5

    const-string v5, "RetrainCost"

    if-eqz v11, :cond_9

    .line 104
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    move-object/from16 v24, v5

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 105
    move/from16 v25, v11

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ne v11, v8, :cond_8

    .line 106
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->retrainingSession(Lorg/json/JSONObject;IILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v11

    .line 107
    move-object/from16 v23, v15

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v3, :cond_7

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v4, :cond_7

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v7, :cond_7

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->sameIDs(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 108
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 109
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v26, v14

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v15, v14, :cond_6

    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    move-object/from16 v27, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v10, v14}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->contains(Lorg/json/JSONArray;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v1, v14}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->eligible(Lorg/json/JSONObject;I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v14, v22

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, v26

    move-object/from16 v5, v27

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    move-object/from16 v5, v21

    invoke-direct {v1, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid retraining player"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_6
    move-object/from16 v5, v21

    move-object/from16 v14, v22

    move-object/from16 v21, v9

    goto :goto_6

    .line 107
    :cond_7
    move-object/from16 v5, v21

    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_8
    move-object/from16 v5, v21

    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_9
    move-object/from16 v24, v5

    move/from16 v25, v11

    move-object/from16 v26, v14

    move-object/from16 v23, v15

    move-object/from16 v5, v21

    move-object/from16 v14, v22

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v11, v15, :cond_d

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    invoke-static {v1, v15}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v0, v15, v3}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->eligible(Lorg/json/JSONObject;I)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v21, v9

    const/4 v9, 0x3

    if-ne v3, v9, :cond_a

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    move-object/from16 v22, v10

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_c

    goto :goto_4

    :cond_a
    move-object/from16 v22, v10

    :goto_4
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :cond_c
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_3

    :cond_d
    move-object/from16 v21, v9

    .line 111
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_32

    .line 112
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    if-gt v8, v9, :cond_31

    .line 113
    nop

    .line 114
    const/4 v9, 0x3

    if-ne v3, v9, :cond_16

    .line 115
    const-string v9, "Cla"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid special coach flag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_f
    :goto_7
    const-string v9, "Stats"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x2

    rem-int/2addr v10, v11

    if-nez v10, :cond_15

    .line 117
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v11, 0x0

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    const-string v11, "PGP"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_10

    const/4 v11, 0x1

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    .line 118
    :goto_8
    move-object/from16 v16, v6

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_9
    move-object/from16 v22, v12

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    const-string v1, "StatCount"

    if-ge v15, v12, :cond_13

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    move-object/from16 v27, v13

    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    if-ltz v12, :cond_12

    move-object/from16 v28, v9

    const/16 v9, 0xa

    if-ge v12, v9, :cond_12

    const/16 v9, 0x8

    if-eqz v11, :cond_11

    if-lt v12, v9, :cond_12

    goto :goto_a

    :cond_11
    if-ge v12, v9, :cond_12

    :goto_a
    if-lez v13, :cond_12

    move-object/from16 v9, v23

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v13, v1, :cond_12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v1, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    add-int/2addr v6, v13

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v1, p1

    move-object/from16 v23, v9

    move-object/from16 v12, v22

    move-object/from16 v13, v27

    move-object/from16 v9, v28

    goto :goto_9

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid special coach allocation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_13
    move-object/from16 v27, v13

    move-object/from16 v9, v23

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v6, v1, :cond_14

    goto :goto_b

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Special coach allocation changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid special coach stats"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_16
    move-object/from16 v16, v6

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v9, v23

    const/4 v10, 0x0

    .line 121
    :goto_b
    const-string v1, "Stf"

    move-object/from16 v6, v20

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v11, Lcom/firsttouchgames/dls7/OfflineCoaches26;->INVENTORY:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v11, "Cr"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "Gm"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    if-nez v25, :cond_17

    if-nez v12, :cond_17

    if-nez v2, :cond_17

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    if-lez v15, :cond_17

    const/4 v15, 0x1

    goto :goto_c

    :cond_17
    const/4 v15, 0x0

    .line 123
    :goto_c
    move-object/from16 v20, v1

    const-string v1, "Sta"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move/from16 v23, v4

    const-string v4, "Fac"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rules:Lorg/json/JSONObject;

    move-object/from16 v28, v10

    const-string v10, "Stadium"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "TrainingCentreBoosts"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "CoachCostPercentReduce"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 124
    if-eqz v25, :cond_18

    move-object/from16 v4, v24

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    goto :goto_d

    :cond_18
    const-string v4, "Cost"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :goto_d
    const/16 v10, 0x64

    rsub-int/lit8 v1, v1, 0x64

    mul-int/2addr v4, v1

    div-int/2addr v4, v10

    .line 125
    if-nez v15, :cond_1a

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-ne v12, v10, :cond_19

    neg-int v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v2, v4, :cond_19

    goto :goto_e

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Coach price changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1a
    :goto_e
    if-ltz v12, :cond_30

    if-ltz v2, :cond_30

    .line 127
    if-nez v15, :cond_1c

    const-string v1, "Cur"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move/from16 v24, v3

    int-to-long v3, v12

    cmp-long v3, v10, v3

    if-ltz v3, :cond_1b

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v10, v2

    cmp-long v1, v3, v10

    if-ltz v1, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Insufficient balance for coach"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    move/from16 v24, v3

    .line 128
    :goto_f
    const-string v1, "PT"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "MaxPerTurn"

    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v10, "NCS"

    if-ltz v3, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-ge v11, v3, :cond_1d

    goto :goto_10

    :cond_1d
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1e
    :goto_10
    if-nez v25, :cond_1f

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->random:Ljava/util/Random;

    invoke-static {v14, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_1f
    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->random:Ljava/util/Random;

    const/16 v11, 0x64

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v11, "BreakthroughChance"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ge v3, v11, :cond_20

    const/4 v11, 0x1

    goto :goto_11

    :cond_20
    const/4 v11, 0x0

    .line 130
    :goto_11
    if-eqz v11, :cond_21

    const-string v3, "BreakthroughPercentIncrease"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_12

    :cond_21
    const/4 v3, 0x0

    :goto_12
    const/16 v4, 0x64

    add-int/2addr v3, v4

    mul-int v3, v3, v18

    div-int/2addr v3, v4

    .line 131
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 132
    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v8, :cond_28

    .line 133
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v29, v8

    move-object/from16 v8, v19

    check-cast v8, Lorg/json/JSONObject;

    move-object/from16 v19, v14

    const-string v14, "PSt"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    move/from16 p2, v11

    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v30, v6

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    move-object/from16 v31, v10

    move/from16 v10, v24

    move-object/from16 v24, v1

    const/4 v1, 0x3

    if-ne v10, v1, :cond_24

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v32, v7

    const/4 v7, 0x0

    const/16 v33, 0x0

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Map$Entry;

    .line 138
    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v36, v6

    mul-int v6, v3, v35

    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    move/from16 v35, v2

    invoke-static/range {v34 .. v34}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v8, v2, v6}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->improve(Lorg/json/JSONObject;Ljava/util/List;I)I

    move-result v2

    add-int v33, v33, v2

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v7, v6

    .line 139
    move/from16 v2, v35

    move-object/from16 v6, v36

    goto :goto_14

    .line 140
    :cond_22
    move/from16 v35, v2

    if-lez v7, :cond_23

    invoke-virtual {v0, v8}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rating(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->ceiling(Lorg/json/JSONObject;)I

    move-result v6

    if-ge v2, v6, :cond_23

    invoke-direct {v0, v8, v1, v7}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->improve(Lorg/json/JSONObject;Ljava/util/List;I)I

    move-result v1

    add-int v33, v33, v1

    .line 141
    :cond_23
    move/from16 v36, v10

    move/from16 v1, v33

    const/4 v2, 0x0

    goto :goto_16

    .line 142
    :cond_24
    move/from16 v35, v2

    move/from16 v32, v7

    sget-object v1, Lcom/firsttouchgames/dls7/OfflineCoaches26;->STATS:[[I

    aget-object v1, v1, v10

    array-length v2, v1

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v2, :cond_26

    move/from16 v33, v2

    aget v2, v1, v7

    move-object/from16 v34, v1

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move/from16 v36, v10

    const/16 v10, 0x3e8

    if-ge v1, v10, :cond_25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v33

    move-object/from16 v1, v34

    move/from16 v10, v36

    goto :goto_15

    :cond_26
    move/from16 v36, v10

    iget-object v1, v0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->random:Ljava/util/Random;

    invoke-static {v6, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 143
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "RandomSelectionCount"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v6, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v6, v3

    invoke-direct {v0, v8, v1, v6}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->improve(Lorg/json/JSONObject;Ljava/util/List;I)I

    move-result v33

    move/from16 v1, v33

    .line 146
    :goto_16
    if-lez v1, :cond_27

    move-object/from16 v6, v27

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "before"

    invoke-virtual {v7, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v10, "after"

    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "raw_stat_gain"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    :cond_27
    move-object/from16 v6, v27

    .line 132
    :goto_17
    add-int/lit8 v5, v5, 0x1

    move/from16 v11, p2

    move-object/from16 v27, v6

    move-object/from16 v14, v19

    move-object/from16 v1, v24

    move/from16 v8, v29

    move-object/from16 v6, v30

    move-object/from16 v10, v31

    move/from16 v7, v32

    move/from16 v2, v35

    move/from16 v24, v36

    goto/16 :goto_13

    .line 148
    :cond_28
    move/from16 v35, v2

    move-object/from16 v30, v6

    move/from16 v32, v7

    move-object/from16 v31, v10

    move/from16 p2, v11

    move/from16 v36, v24

    const/4 v2, 0x0

    move-object/from16 v24, v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 149
    if-eqz v15, :cond_29

    move-object/from16 v3, v20

    move/from16 v1, v23

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    move-object/from16 v6, p1

    move/from16 v7, v35

    goto :goto_18

    :cond_29
    move/from16 v1, v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coach-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "permanent_coach"

    move-object/from16 v6, p1

    move/from16 v7, v35

    invoke-static {v6, v3, v12, v7, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 150
    :goto_18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v8, v22

    move/from16 v5, v36

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v8, v16

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v21

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v25, :cond_2a

    add-int/lit8 v8, v32, 0x1

    goto :goto_19

    :cond_2a
    const/4 v8, 0x3

    if-ne v5, v8, :cond_2b

    const/4 v8, -0x1

    goto :goto_19

    :cond_2b
    move v8, v2

    :goto_19
    move-object/from16 v9, v26

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "coaching_session26"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    if-eqz v24, :cond_2c

    move-object/from16 v3, v24

    move-object/from16 v6, v31

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1a

    :cond_2c
    const/4 v9, 0x1

    :goto_1a
    const-string v3, "Onb"

    move-object/from16 v6, v30

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "UCo"

    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object/from16 v8, v17

    invoke-virtual {v3, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "PlayerIDs"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Breakthrough"

    move/from16 v6, p2

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CoachType"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CoachLevel"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "FromInventory"

    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "RetrainIndex"

    move/from16 v4, v32

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v15, :cond_2d

    move v11, v2

    goto :goto_1b

    :cond_2d
    neg-int v11, v12

    :goto_1b
    const-string v3, "CrD"

    invoke-virtual {v1, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v15, :cond_2e

    move v10, v2

    goto :goto_1c

    :cond_2e
    neg-int v10, v7

    :goto_1c
    const-string v2, "GmD"

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Changes"

    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 148
    :cond_2f
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative coach price"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Coaching candidates changed; reopen coach"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_32
    move-object v2, v5

    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Coach parameters changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_34
    move-object v2, v12

    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_35
    move-object v2, v12

    :goto_1d
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v1, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid coach category"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method purchaseSpecial(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    const-string v0, "CoL"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 83
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rules:Lorg/json/JSONObject;

    const-string v3, "PlayerBoosts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Permanent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CoachSpecial"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    const-string v3, "Sta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Fac"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->rules:Lorg/json/JSONObject;

    const-string v6, "Stadium"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "TrainingCentreBoosts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CoachCostPercentReduce"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const-string v5, "Cost"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v3, v3, 0x64

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    .line 85
    const-string v3, "Cos"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 86
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2

    move v3, v4

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->card(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v7, 0x3

    invoke-direct {p0, v5, v7}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->eligible(Lorg/json/JSONObject;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move p2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p2, v4

    .line 87
    :goto_1
    if-eqz p2, :cond_2

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "special-coach-"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    neg-int v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v5, "special_coach_purchase"

    invoke-static {p1, p2, p3, v3, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 89
    const-string p1, "Stf"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "NCC"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    add-int/2addr p2, v6

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 91
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "CoachLevel"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    neg-int p2, p2

    const-string p3, "CrD"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "GmD"

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    new-instance p1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p2, "CANTBOOST"

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Special coach price changed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid special coach level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method rating(Lorg/json/JSONObject;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    const-string v0, "PSt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->catalog:Lorg/json/JSONObject;

    const-string v2, "rating_weights"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "PGP"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lcom/firsttouchgames/dls7/OfflineCoaches26;->catalog:Lorg/json/JSONObject;

    const-string v3, "rating_bias"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 23
    nop

    :goto_1
    const/16 v1, 0xa

    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_1
    const-wide/16 v0, 0x2710

    div-long/2addr v3, v0

    const-wide/16 v0, 0x270f

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method
