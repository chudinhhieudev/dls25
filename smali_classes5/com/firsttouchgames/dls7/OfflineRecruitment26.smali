.class final Lcom/firsttouchgames/dls7/OfflineRecruitment26;
.super Ljava/lang/Object;
.source "OfflineRecruitment26.java"


# static fields
.field static final MATCHDAY:I = 0x13


# instance fields
.field private final players:Lorg/json/JSONObject;

.field private final random:Ljava/util/Random;

.field private final rules:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->random:Ljava/util/Random;

    .line 14
    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string p1, "players"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->players:Lorg/json/JSONObject;

    return-void
.end method

.method static acceptLineup(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-string v0, "matchday_pending_signing"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    :cond_1
    const-string v0, "matchday_repair_pending"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "previous"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p1

    const-string v3, "desired"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static activeSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addOwned(Lorg/json/JSONObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->addOwned(Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method private addOwned(Lorg/json/JSONObject;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 164
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->capacity(Lorg/json/JSONObject;)I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 165
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->marketPlayer(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_8

    const-string v3, "PPt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 170
    :cond_3
    invoke-static {v3, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 171
    :cond_4
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, "ShN"

    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {p1, v3, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x63

    if-ge v1, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 172
    :cond_6
    const-string p3, "Sig"

    invoke-virtual {v2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "En"

    const v2, 0x927c

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/16 v1, 0x13

    if-le p3, v1, :cond_7

    const/16 p3, 0x12

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    sub-int/2addr p3, v5

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    const-string p3, "matchday_pending_signing"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    :cond_7
    return-void

    .line 165
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing saved recovery card"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Squad full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Player already owned"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private base(I)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->players:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private capacity(Lorg/json/JSONObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Sta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Fac"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v1, "Stadium"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "AccomodationBoosts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "MaxSquadSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    return p1
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 155
    if-lez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-coins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    neg-int p2, p2

    int-to-long v1, p2

    invoke-static {p0, v0, v1, v2, p4}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 156
    :cond_0
    if-lez p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-gems"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    neg-int p2, p3

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 157
    :cond_1
    return-void

    .line 154
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative price"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private eligible(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const-string v0, "native_teams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 76
    const-string v1, "available"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hidden"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "retired"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "special_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 76
    :goto_0
    return p1
.end method

.method private fee(Lorg/json/JSONObject;ZI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "Agents"

    goto :goto_0

    :cond_0
    const-string v1, "Scouting"

    :goto_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Cost"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p3

    .line 211
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v1, "Stadium"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "RecruitmentCentreBoosts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Sta"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Fac"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    if-eqz p2, :cond_1

    const-string p2, "AgentCostPercentReduce"

    goto :goto_1

    :cond_1
    const-string p2, "ScoutCostPercentReduce"

    :goto_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 212
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    rsub-int/lit8 p1, p1, 0x64

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x64

    return p2
.end method

.method private static forgetRecovery(Lorg/json/JSONObject;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->removePool(Lorg/json/JSONObject;II)V

    return-void
.end method

.method private static has(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
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

.method static isRecoverable(Lorg/json/JSONObject;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recovery(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$migrateMatchday$0(Lorg/json/JSONObject;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->ownedRating(Lorg/json/JSONObject;I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->ownedRating(Lorg/json/JSONObject;I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private marketPlayer(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 123
    :cond_0
    invoke-direct {p0, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "profile"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "PPt"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p2
.end method

.method private static ownedGroup(Lorg/json/JSONObject;I)I
    .locals 1

    .line 71
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PGP"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing owned player"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static ownedRating(Lorg/json/JSONObject;I)I
    .locals 1

    .line 70
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "IRa"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing owned player"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "PPt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static quote(Lorg/json/JSONObject;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    const-string v0, "Cr"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string p1, "Gm"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p2, :cond_0

    .line 160
    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Price changed; reopen purchase"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "RcPls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "RcPl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static recovery(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static removePool(Lorg/json/JSONObject;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    goto :goto_2

    :cond_1
    const-string v2, "PPt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    :cond_4
    return-void
.end method

.method static specialBasePrice(I)I
    .locals 1

    .line 141
    add-int/lit8 p0, p0, -0x4f

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x7

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x19

    add-int/lit16 p0, p0, 0xc8

    return p0
.end method

.method private static squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

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

.method private static storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static syncRosterRegistry(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "DSPls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_0
    const-string v0, "DSPl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    .line 28
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v5, "PID"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    move v7, v6

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 30
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 31
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 29
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate squad registry player"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_2
    move v1, v6

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 35
    if-nez v8, :cond_3

    .line 36
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "RPC"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Fave"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const v10, 0xffff

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "RPl"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 37
    :goto_2
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    return-void
.end method

.method private team(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "native_teams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    return p1

    .line 130
    :cond_0
    const-string v0, "special_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/16 p1, 0x102

    return p1

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Recruitment player has no display team"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static valueGroup(I)I
    .locals 1

    .line 137
    if-ltz p0, :cond_3

    const/16 v0, 0x18

    if-gt p0, v0, :cond_3

    .line 138
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x12

    if-gt p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0

    .line 137
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid player position"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method buy(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "PID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v6

    if-nez v6, :cond_15

    .line 186
    invoke-static {v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recovery(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 187
    const-string v7, "GmD"

    const-string v8, "PlayerCostGems"

    const-string v9, "buy-"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    .line 188
    const-string v12, "RTi"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 189
    invoke-virtual {v0, v6}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveryGems(Lorg/json/JSONObject;)I

    move-result v6

    invoke-static {v2, v11, v6}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->quote(Lorg/json/JSONObject;II)V

    invoke-direct {v0, v1, v5, v10}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->addOwned(Lorg/json/JSONObject;IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RECOVERPLAYER"

    invoke-static {v1, v2, v11, v6, v3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->forgetRecovery(Lorg/json/JSONObject;I)V

    .line 190
    invoke-direct {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "native_teams"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PlayerID"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x102

    :goto_0
    const-string v3, "TeamID"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SecretPlayer"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PercentDiscount"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PlayerCostCoins"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ScoutedPlayer"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RecoveredPlayer"

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CrD"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    neg-int v2, v6

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Recovery offer expired"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_2
    invoke-direct {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->eligible(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v12, "TrMP"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v12, "TrMPI"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "PrEM"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "ScPl"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 195
    const/4 v14, 0x0

    move v15, v11

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v15, v10, :cond_4

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v5, :cond_3

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object v14, v10

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 196
    :cond_4
    move v10, v11

    move v15, v10

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v5, :cond_5

    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object v14, v11

    const/4 v15, 0x1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 197
    :cond_6
    if-eqz v14, :cond_13

    .line 198
    const/4 v10, 0x4

    invoke-static {v1, v5, v10}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pooled(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 199
    const-string v11, "PDi"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->price(Lorg/json/JSONObject;I)I

    move-result v10

    invoke-virtual {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->gemPrice(I)Z

    move-result v14

    .line 202
    nop

    .line 203
    if-eqz v14, :cond_7

    move-object/from16 v18, v7

    const-string v7, "Cr"

    move-object/from16 v19, v8

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v20, v11

    neg-int v11, v10

    if-ne v8, v11, :cond_8

    const-string v8, "Gm"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v11

    .line 204
    :cond_8
    :goto_3
    if-eqz v14, :cond_9

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    move v11, v10

    :goto_4
    if-eqz v14, :cond_a

    move v7, v10

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    invoke-static {v2, v11, v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->quote(Lorg/json/JSONObject;II)V

    invoke-direct {v0, v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->addOwned(Lorg/json/JSONObject;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v14, :cond_b

    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    move v11, v10

    :goto_6
    if-eqz v14, :cond_c

    move v3, v10

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    const-string v7, "BUYPLAYER"

    invoke-static {v1, v2, v11, v3, v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 205
    filled-new-array {v6, v12}, [Lorg/json/JSONArray;

    move-result-object v2

    const/4 v11, 0x0

    :goto_8
    const/4 v3, 0x2

    if-ge v11, v3, :cond_f

    aget-object v3, v2, v11

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_9
    if-ltz v6, :cond_e

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_d

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 206
    :cond_f
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SRT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 207
    :goto_a
    if-eqz v14, :cond_11

    move/from16 v1, v20

    invoke-virtual {v0, v5, v3, v1, v15}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->presentation(IIIZ)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    neg-int v2, v10

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_b

    :cond_11
    move/from16 v1, v20

    invoke-virtual {v0, v5, v10, v1, v15}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->presentation(IIIZ)Lorg/json/JSONObject;

    move-result-object v1

    :goto_b
    return-object v1

    .line 198
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing market player"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Player not currently offered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Player unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Player already owned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method discard(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PrEM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "ScPl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "SRT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->prune(Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method gemPrice(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "special_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method grantTestPlayer(Lorg/json/JSONObject;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "available"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->addOwned(Lorg/json/JSONObject;I)V

    .line 178
    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Test player unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method initializeRecovery(Lorg/json/JSONObject;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    move-object/from16 v8, p1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "RcPls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "RcPl"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 103
    const-string v11, "recovery_version26"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x1

    if-ge v0, v12, :cond_6

    .line 107
    const-string v0, "receipts"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v14, "RewardType"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SELLPLAYER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ReleasePlayerID"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v15, "PID"

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "PPt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v8, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recovery(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "RewardLevel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "Reward"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "ReleasedAt"

    invoke-virtual {v0, v1, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rememberRelease(Lorg/json/JSONObject;Lorg/json/JSONObject;IIIJ)V

    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pruneRecovery(Lorg/json/JSONObject;J)V

    .line 114
    return-void
.end method

.method migrateMatchday(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const-string v0, "matchday_signings_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_5

    .line 46
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xb

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v5, Lcom/firsttouchgames/dls7/OfflineRecruitment26$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 50
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->ownedGroup(Lorg/json/JSONObject;I)I

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 51
    :cond_3
    :goto_2
    nop

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    add-int/lit8 v6, v5, 0xb

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 52
    :cond_4
    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->activeSet(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "previous"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "desired"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "matchday_repair_pending"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_5
    const-string v1, "matchday_signings_v1"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    return-void
.end method

.method nextMatch(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PrEM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ScPl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "NGa"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "SRT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->prune(Lorg/json/JSONObject;)V

    .line 245
    return-void
.end method

.method presentation(IIIZ)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "PID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PlayerID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "TeamID"

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->team(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "SecretPlayer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "PercentDiscount"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "PlayerCostCoins"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "ScoutedPlayer"

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "CrD"

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method price(Lorg/json/JSONObject;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    .line 144
    const-string v4, "PID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->gemPrice(I)Z

    move-result v5

    const-string v6, "IRa"

    if-eqz v5, :cond_0

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v1, v3

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->specialBasePrice(I)I

    move-result v1

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v1, v2

    div-int/2addr v1, v3

    return v1

    .line 145
    :cond_0
    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v7, "PlayerValues"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "Mid"

    const-string v8, "Att"

    const-string v9, "Gk"

    const-string v10, "Def"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->base(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "position"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->valueGroup(I)I

    move-result v4

    aget-object v4, v7, v4

    .line 147
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v1, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MinRating"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MaxRating"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MinValue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "MaxValue"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v4, "ExpFactorWhole"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v4, "ExpFactorTenths"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v4, v4, v16

    add-double/2addr v14, v4

    .line 148
    sub-double/2addr v12, v10

    int-to-double v4, v1

    sub-double/2addr v4, v6

    sub-double/2addr v8, v6

    div-double/2addr v4, v8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    double-to-int v1, v10

    .line 151
    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x5

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v1, v2

    div-int/2addr v1, v3

    return v1

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid transfer discount"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method prune(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrEM"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ScPl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "TrMP"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "TrMPI"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    filled-new-array {v1, v2}, [Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "PID"

    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    move v6, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->storage(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PPt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 249
    :cond_5
    return-void
.end method

.method pruneRecovery(Lorg/json/JSONObject;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const-string v3, "PID"

    const-string v4, "RTi"

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p1, v3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->forgetRecovery(Lorg/json/JSONObject;I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string p3, "TransferMarket"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "BuyBackMaxPlayers"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 90
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-le p3, p2, :cond_5

    const/4 p3, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    move p3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->forgetRecovery(Lorg/json/JSONObject;I)V

    goto :goto_1

    .line 91
    :cond_5
    return-void
.end method

.method recoveryGems(Lorg/json/JSONObject;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    const-string v0, "CoachFitness"

    const-string v1, "CoachSpecial"

    const-string v2, "CoachGoalkeeping"

    const-string v3, "CoachTechnical"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRc"

    const-string v2, "GLc"

    const-string v3, "GCc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v3, "PlayerBoosts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Permanent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move v6, v5

    :goto_0
    const/4 v9, 0x3

    if-ge v6, v9, :cond_2

    aget-object v10, v1, v6

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move v11, v5

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    if-ltz v12, :cond_0

    if-gt v12, v9, :cond_0

    aget-object v12, v0, v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "Cost"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid recovery coach"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v0, "TransferMarket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "BuyBackCostPercentageFee"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    mul-long/2addr v0, v7

    const-wide/16 v5, 0x64

    div-long/2addr v0, v5

    add-long/2addr v7, v0

    .line 119
    cmp-long p1, v7, v3

    if-gez p1, :cond_3

    const-wide/32 v0, -0x77359400

    cmp-long p1, v7, v0

    if-ltz p1, :cond_3

    neg-long v0, v7

    long-to-int p1, v0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid recovery cost"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method recruit(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Age"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Lev"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_23

    const/4 v5, 0x2

    if-gt v4, v5, :cond_23

    .line 216
    iget-object v6, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v7, "Scouting"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "PrEM"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 217
    const-string v9, "NumPlayers"

    if-eqz v3, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    :goto_0
    const-string v12, "NumGames"

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    .line 218
    :goto_1
    const-string v15, "NP"

    invoke-virtual {v2, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v15, v11, :cond_22

    const-string v15, "NGa"

    if-nez v3, :cond_2

    invoke-virtual {v2, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v14, :cond_22

    .line 219
    :cond_2
    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct/range {p0 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->capacity(Lorg/json/JSONObject;)I

    move-result v13

    if-ge v5, v13, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Squad full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_4
    :goto_2
    const-string v5, "ScPl"

    if-nez v3, :cond_6

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gtz v13, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Discard previous search first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_6
    :goto_3
    invoke-direct {v0, v1, v3, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->fee(Lorg/json/JSONObject;ZI)I

    move-result v13

    const-string v10, "Stf"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move/from16 v16, v13

    const-string v13, "NSc"

    if-eqz v3, :cond_7

    const-string v17, "NAg"

    move-object/from16 v28, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v28

    goto :goto_4

    :cond_7
    move-object/from16 v17, v12

    move-object v12, v13

    :goto_4
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 222
    const-string v12, "Cr"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "Gm"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 223
    :goto_5
    if-nez v12, :cond_b

    move-object/from16 v18, v9

    if-eqz v3, :cond_9

    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    move/from16 v9, v16

    :goto_6
    move-object/from16 v19, v13

    if-eqz v3, :cond_a

    move/from16 v13, v16

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    invoke-static {v2, v9, v13}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->quote(Lorg/json/JSONObject;II)V

    goto :goto_8

    :cond_b
    move-object/from16 v18, v9

    move-object/from16 v19, v13

    .line 224
    :goto_8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v9, v13, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->squad(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 225
    :cond_c
    const/4 v9, 0x0

    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    move-object/from16 v20, v10

    const-string v10, "PID"

    if-ge v9, v13, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v20

    goto :goto_a

    .line 226
    :cond_d
    const-string v9, "TrMP"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v13, "TrMPI"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v13, 0x0

    :goto_b
    move-object/from16 v21, v7

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v13, v7, :cond_e

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v21

    goto :goto_b

    .line 227
    :cond_e
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_f

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 228
    :cond_f
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 229
    move-object/from16 v22, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v11, :cond_18

    .line 230
    if-nez v3, :cond_12

    move/from16 v23, v11

    iget-object v11, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->random:Ljava/util/Random;

    move-object/from16 v24, v8

    const/16 v8, 0x64

    invoke-virtual {v11, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const-string v11, "ChanceLegendary"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    move/from16 v25, v12

    const-string v12, "ChanceRare"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    if-ge v8, v11, :cond_10

    const/4 v8, 0x2

    goto :goto_e

    :cond_10
    add-int/2addr v11, v12

    if-ge v8, v11, :cond_11

    const/4 v8, 0x1

    goto :goto_e

    :cond_11
    const/4 v8, 0x0

    goto :goto_e

    :cond_12
    move-object/from16 v24, v8

    move/from16 v23, v11

    move/from16 v25, v12

    move v8, v4

    .line 231
    :goto_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->players:Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 p2, v12

    move-object/from16 v12, v26

    check-cast v12, Ljava/lang/String;

    move/from16 v26, v5

    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->players:Lorg/json/JSONObject;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->eligible(Lorg/json/JSONObject;)Z

    move-result v27

    if-eqz v27, :cond_13

    move-object/from16 v27, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "rarity"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    move-object/from16 v27, v13

    :cond_14
    :goto_10
    move-object/from16 v12, p2

    move/from16 v5, v26

    move-object/from16 v13, v27

    goto :goto_f

    .line 232
    :cond_15
    move/from16 v26, v5

    move-object/from16 v27, v13

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 233
    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->random:Ljava/util/Random;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->team(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 234
    if-eqz v3, :cond_16

    invoke-direct {v0, v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->addOwned(Lorg/json/JSONObject;I)V

    move-object/from16 v8, v27

    goto :goto_11

    .line 235
    :cond_16
    invoke-direct {v0, v1, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->marketPlayer(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    const-string v8, "PercentDiscountMin"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    const-string v11, "PercentDiscountMax"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "TID"

    invoke-direct {v0, v5}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->team(I)I

    move-result v5

    invoke-virtual {v12, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v12, v0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->random:Ljava/util/Random;

    sub-int/2addr v11, v8

    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-virtual {v12, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v8, v11

    const-string v11, "PDi"

    invoke-virtual {v5, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v8, v27

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    :goto_11
    add-int/lit8 v5, v26, 0x1

    move-object v13, v8

    move/from16 v11, v23

    move-object/from16 v8, v24

    move/from16 v12, v25

    goto/16 :goto_d

    .line 232
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available players in this rarity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_18
    move-object/from16 v24, v8

    move/from16 v23, v11

    move/from16 v25, v12

    move-object v8, v13

    if-eqz v25, :cond_19

    move-object/from16 v1, v20

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    goto :goto_15

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recruit-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1a

    const/4 v5, 0x0

    goto :goto_12

    :cond_1a
    move/from16 v5, v16

    :goto_12
    if-eqz v3, :cond_1b

    move/from16 v10, v16

    goto :goto_13

    :cond_1b
    const/4 v10, 0x0

    :goto_13
    if-eqz v3, :cond_1c

    const-string v11, "agent"

    goto :goto_14

    :cond_1c
    const-string v11, "scout"

    :goto_14
    invoke-static {v1, v2, v5, v10, v11}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    .line 238
    :goto_15
    if-nez v3, :cond_1d

    move-object/from16 v2, v22

    move-object/from16 v1, v24

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CSl"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    const-string v2, "RemoveTime"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v4, v10

    const-string v2, "SRT"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "PT"

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    :cond_1d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Agent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v18

    move/from16 v10, v23

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PlayerIDs"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TeamIDs"

    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "AAU"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ASU"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PityApplied"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v25, :cond_1f

    move/from16 v2, v16

    if-eqz v3, :cond_1e

    goto :goto_16

    :cond_1e
    neg-int v5, v2

    goto :goto_17

    :cond_1f
    move/from16 v2, v16

    :goto_16
    move v5, v4

    :goto_17
    const-string v6, "CrD"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v25, :cond_21

    if-nez v3, :cond_20

    goto :goto_18

    :cond_20
    neg-int v13, v2

    goto :goto_19

    :cond_21
    :goto_18
    move v13, v4

    :goto_19
    const-string v2, "GmD"

    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 218
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Recruitment parameters changed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid staff level"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method rememberRelease(Lorg/json/JSONObject;Lorg/json/JSONObject;IIIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    const-string v0, "PID"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 94
    :cond_1
    const-string v2, "PPt"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->has(Lorg/json/JSONArray;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 95
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rules:Lorg/json/JSONObject;

    const-string v1, "TransferMarket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "BuyBackTimeSeconds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, p6

    const-string v3, "RTi"

    invoke-virtual {p2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    .line 96
    const-string v0, "GCc"

    const-string v1, "GRc"

    const-string v3, "GLc"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 97
    :cond_3
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    aget-object p4, v0, p4

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    :goto_2
    if-ge v2, p5, :cond_4

    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    :cond_4
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recoveries(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p6, p7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pruneRecovery(Lorg/json/JSONObject;J)V

    .line 99
    return-void
.end method
