.class final Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;
.super Ljava/lang/Object;
.source "OfflinePrizeLadder26.java"


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final config:Lorg/json/JSONObject;

.field private final recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/firsttouchgames/dls7/OfflineRecruitment26;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->config:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->catalog:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    return-void
.end method

.method private static activate(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "DPB"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "DreamPointsBoosts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Boosts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 62
    const-string v0, "Matches"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "DPM"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PBL"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PBR"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    return-void
.end method

.method static boostPoints(Lorg/json/JSONObject;Lorg/json/JSONObject;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DPB"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DPM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "PBL"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v2, :cond_0

    return p3

    .line 71
    :cond_0
    const-string v4, "Common"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "DreamPointsBoosts"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Boosts"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-ltz v3, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 72
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "BoostPercent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr p2, v3

    int-to-double v3, p2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, "PBR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ladder_boost_queue26"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->activate(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    .line 74
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->addExact(II)I

    move-result p0

    return p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Dream boost level"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkArray(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid reward count"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid reward levels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private definition(I)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->config:Lorg/json/JSONObject;

    const-string v1, "Common"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PrizeLadder"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Ladders"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 17
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "LadderID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "PRIZELADDER_NOTACTIVE"

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static giftBoost(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DPB"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DPM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->activate(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    return-void

    .line 67
    :cond_0
    const-string p1, "ladder_boost_queue26"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 68
    return-void
.end method

.method private static obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
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

    .line 13
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static reject(Ljava/lang/String;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    invoke-direct {v0, p0}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private special(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DrT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Man"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LU"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    move v4, v2

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iget-object v6, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->catalog:Lorg/json/JSONObject;

    const-string v7, "players"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "available"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    const-string v1, "PRIZELADDER_REWARDNOTREADY"

    if-ne v4, p2, :cond_3

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 52
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v2, "Common"

    const/4 v4, 0x2

    if-eqz p2, :cond_6

    .line 53
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->config:Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "PrizeLadder"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "SpecialPlayerReplacementCoaches"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Stf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "NCC"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    const/16 v2, 0xff

    if-le v0, v2, :cond_5

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    const-string p1, "SpecialPlayerReplacementLegendaryCoaches"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 55
    :cond_6
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v5, "Sta"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v5, "Fac"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->config:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "Stadium"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "AccomodationBoosts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "MaxSquadSize"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, p2, :cond_7

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 58
    :cond_7
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v0, p1, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->grantTestPlayer(Lorg/json/JSONObject;I)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "PID"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "TID"

    const/16 v1, 0x102

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "SecretPlayerInfo"

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    return-void
.end method

.method private static staffField(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 47
    const-string v0, "GKCoaches"

    const-string v1, "NGC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "TechnicalCoaches"

    const-string v1, "NTC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "FitnessCoaches"

    const-string v1, "NFC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "SpecialCoaches"

    const-string v1, "NCC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "Agents"

    const-string v1, "NAg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "Scouts"

    const-string v1, "NSc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "Physios"

    const-string v1, "NPh"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "FormBoosts"

    const-string v1, "NFB"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    aget-object v4, v3, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    aget-object p0, v3, p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PrL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Unl"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "PRIZELADDER_NOTACTIVE"

    if-nez v7, :cond_0

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 22
    :cond_0
    const-string v7, "LID"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "PrC"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v0, v9}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->definition(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "PointsPerTier"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "Prizes"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Standard"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 23
    new-instance v15, Ljava/text/SimpleDateFormat;

    move-object/from16 p3, v5

    const-string v5, "dd/MM/yyyy"

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v15, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    const-string v5, "StartDate"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    const-string v5, "StartSeconds"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 24
    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    const-string v5, "LadderLength"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v15, v15, v17

    cmp-long v5, v3, v15

    if-lez v5, :cond_2

    :cond_1
    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 25
    :cond_2
    const-string v5, "PRIZELADDER_REWARDNOTREADY"

    if-ltz v11, :cond_3

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v11, v8, :cond_3

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v11, v8, :cond_4

    :cond_3
    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 26
    :cond_4
    const-string v8, "CuT"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v11, :cond_5

    const-string v8, "PoT"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    cmp-long v8, v15, v12

    if-gez v8, :cond_6

    :cond_5
    const-string v8, "PRIZELADDER_TIERNOTCOMPLETE"

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    .line 27
    :cond_6
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_8

    :cond_7
    const-string v7, "Tier"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_8

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ladder claim differs from next unlocked reward"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ladder_claims26"

    invoke-static {v1, v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 29
    const-string v13, "Extra"

    if-eqz v12, :cond_a

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 30
    :cond_a
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "Reward"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "LadderID"

    invoke-virtual {v15, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "CrD"

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 p2, v2

    const-string v2, "GmD"

    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 32
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ladder-"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    const-string v4, "Coins"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "prize_ladder_reward"

    if-eqz v4, :cond_c

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    int-to-long v13, v4

    invoke-static {v1, v3, v13, v14, v8}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    goto/16 :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative ladder coins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_c
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    const-string v4, "Gems"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_d

    int-to-long v13, v4

    invoke-static {v1, v3, v13, v14, v8}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    goto/16 :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative ladder gems"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_e
    const-string v3, "DreamPointBoost"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_11

    .line 36
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->checkArray(Lorg/json/JSONArray;)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_10

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    if-ge v13, v14, :cond_f

    move-object/from16 v14, p0

    iget-object v15, v14, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->config:Lorg/json/JSONObject;

    invoke-static {v1, v15, v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->giftBoost(Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_f
    move-object/from16 v14, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 37
    :cond_10
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    goto :goto_5

    .line 38
    :cond_11
    move-object/from16 v14, p0

    const-string v3, "RandomSpecialPlayer"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v14, v1, v3, v0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->special(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    move-object/from16 v15, p3

    goto :goto_5

    .line 40
    :cond_12
    invoke-static {v15}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->staffField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->checkArray(Lorg/json/JSONArray;)V

    const-string v13, "Stf"

    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 41
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v4, :cond_15

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v22

    add-int v4, v21, v22

    const/16 v1, 0xff

    if-le v4, v1, :cond_14

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->reject(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v3, v13, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x3

    goto :goto_4

    .line 43
    :cond_15
    :goto_5
    move-object/from16 v1, p1

    move-wide/from16 v3, p4

    move-object/from16 p3, v15

    move-object/from16 v8, v17

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    const/4 v15, 0x0

    goto/16 :goto_1

    .line 44
    :cond_16
    move-object/from16 v17, v8

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v14, p0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v12}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "claimed"

    move-wide/from16 v3, p4

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
