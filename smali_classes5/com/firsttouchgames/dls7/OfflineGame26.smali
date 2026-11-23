.class final Lcom/firsttouchgames/dls7/OfflineGame26;
.super Ljava/lang/Object;
.source "OfflineGame26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
    }
.end annotation


# static fields
.field static final USER:I = 0x102


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

.field private final coaches:Lcom/firsttouchgames/dls7/OfflineCoaches26;

.field private final config:Lorg/json/JSONObject;

.field private final forms:Lcom/firsttouchgames/dls7/OfflineForm26;

.field private final physios:Lcom/firsttouchgames/dls7/OfflinePhysios26;

.field private final recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

.field private final scenarios:Lcom/firsttouchgames/dls7/OfflineScenarios26;

.field private final seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

.field private final stadium:Lcom/firsttouchgames/dls7/OfflineStadium26;

.field private state:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    new-instance p1, Lcom/firsttouchgames/dls7/LocalSeasons;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/LocalSeasons;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    new-instance p1, Lcom/firsttouchgames/dls7/OfflineChallenges26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineChallenges26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    new-instance p1, Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    new-instance p1, Lcom/firsttouchgames/dls7/OfflineStadium26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/OfflineStadium26;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->stadium:Lcom/firsttouchgames/dls7/OfflineStadium26;

    new-instance p1, Lcom/firsttouchgames/dls7/OfflineCoaches26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineCoaches26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->coaches:Lcom/firsttouchgames/dls7/OfflineCoaches26;

    .line 27
    new-instance p1, Lcom/firsttouchgames/dls7/OfflinePhysios26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/OfflinePhysios26;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->physios:Lcom/firsttouchgames/dls7/OfflinePhysios26;

    .line 28
    new-instance p1, Lcom/firsttouchgames/dls7/OfflineForm26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineForm26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->forms:Lcom/firsttouchgames/dls7/OfflineForm26;

    .line 29
    new-instance p1, Lcom/firsttouchgames/dls7/OfflineScenarios26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/OfflineScenarios26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->scenarios:Lcom/firsttouchgames/dls7/OfflineScenarios26;

    .line 30
    const-string p1, "PrD"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "Tok"

    const-string v1, "metadata"

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "Prf"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "version"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "economy"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "receipts"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    .line 33
    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    .line 34
    :goto_0
    const-string p1, "fresh_profile"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->initializeFresh(Lorg/json/JSONObject;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    const-string p2, "local_credentials"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p3, ""

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TkS"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    const-string p2, "onboarding"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "pending"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 37
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Sys"

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "UTy"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "TId"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "GPa"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "candidates"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/16 p3, 0x9

    const/4 v0, 0x0

    if-eq p2, p3, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, v0

    .line 39
    :goto_1
    nop

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v0, p3, :cond_6

    iget-object p3, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v1, "players"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/firsttouchgames/dls7/OfflineGame26;->presentable(Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_5

    move p2, v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_6
    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->initializeCaptains(Lorg/json/JSONObject;Ljava/util/Random;)V

    .line 42
    :cond_7
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflinePass26;->repairRenderPurchases(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lcom/firsttouchgames/dls7/LocalPass25;->refresh(Lorg/json/JSONObject;Lorg/json/JSONObject;J)Z

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->initializeSeasons(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->initialize(Lorg/json/JSONObject;J)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->migrateMatchday(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->initializeRecovery(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->syncRosterRegistry(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->validate(Lorg/json/JSONObject;)V

    .line 43
    return-void
.end method

.method private static add(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method private static applyConsent(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Sys"

    invoke-static {p0, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 264
    const-string v4, "LAT"

    const-string v5, "AND"

    const-string v0, "TSV"

    const-string v1, "UAg"

    const-string v2, "PeA"

    const-string v3, "PeN"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_9

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 265
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 266
    const-string v4, "PeA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "PeN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    const-string v4, "AND"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "ALC"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    move-object v3, v4

    goto :goto_2

    .line 268
    :cond_3
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_8

    const-string v6, "UAg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x4

    cmp-long v6, v4, v6

    if-gtz v6, :cond_8

    :cond_5
    const-string v6, "TSV"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v6, 0xff

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    goto :goto_3

    .line 266
    :cond_6
    :goto_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_7

    goto :goto_3

    .line 269
    :cond_7
    :goto_2
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_9
    return-void
.end method

.method private applyQueued(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "pass_render_refund26"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "pass_render_queue_cleaned26"

    const/4 v5, 0x1

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 288
    :goto_0
    const-string v6, "SyncedMod"

    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "design_quotes25_migrated"

    if-nez v7, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void

    .line 289
    :cond_2
    iget-object v9, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {v1, v9, v7}, Lcom/firsttouchgames/dls7/LocalExhibition25;->restoreStatsForQueue(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 290
    const-string v9, "queued_receipts"

    invoke-static {v1, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "reversed_pass_queue26"

    invoke-static {v1, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 291
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_17

    .line 292
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Lcom/firsttouchgames/dls7/OfflineGame26;->hash(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 293
    nop

    .line 294
    const-string v15, "DOBJ"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v4, "DAILYOBJECTIVESCOLLECTREWARDS"

    if-nez v16, :cond_4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v17, v6

    move-object/from16 p2, v7

    move-object/from16 v18, v8

    goto/16 :goto_6

    .line 295
    :cond_4
    :goto_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "event"

    invoke-virtual {v5, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Dai"

    move-object/from16 p2, v7

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "Pre"

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v12, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v12, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_7

    const-string v6, "DCP"

    goto :goto_5

    :cond_7
    const-string v6, "DaO"

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    const-string v6, "WCP"

    goto :goto_5

    :cond_9
    const-string v6, "WCS"

    :goto_5
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "StT"

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v6, "period"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->hash(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 302
    if-eqz v7, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "SPa"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "PrU"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v2, :cond_a

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {v10, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v5, 0x0

    goto/16 :goto_c

    .line 304
    :cond_b
    move-object v14, v3

    :goto_6
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_c

    .line 305
    :cond_c
    const-string v3, "HEALTEAM"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "queue-"

    if-nez v3, :cond_16

    const-string v3, "HEALPLAYER"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 306
    :cond_d
    const-string v3, "BUYOUTF"

    const-string v5, "BUYAC"

    const-string v6, "BUYHS"

    const-string v7, "BUYFH"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v12, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->managerPurchase25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_b

    .line 307
    :cond_e
    const-string v3, "BUYLOGO"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "BUYKIT"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 308
    :cond_f
    const-string v3, "UNLCLOG"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "UNLCKIT"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    .line 309
    :cond_10
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v3, v20

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_7

    .line 310
    :cond_11
    const-string v3, "EXHIBMATCH"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    invoke-static {v1, v12, v14, v3, v4}, Lcom/firsttouchgames/dls7/LocalExhibition25;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 v5, 0x0

    goto :goto_b

    .line 311
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queued operation not implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_13
    :goto_7
    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v12, v4}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    goto :goto_b

    .line 308
    :cond_14
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v1, v12, v3, v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->pay(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_b

    .line 307
    :cond_15
    const/4 v5, 0x0

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v12, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->designPurchase25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_b

    .line 305
    :cond_16
    const/4 v5, 0x0

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v12, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->restore(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 312
    :goto_b
    const/4 v3, 0x1

    invoke-virtual {v9, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 291
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p2

    move v5, v3

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    goto/16 :goto_1

    .line 314
    :cond_17
    move-object/from16 v19, v3

    move v3, v5

    move-object/from16 v18, v8

    if-eqz v2, :cond_18

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    :cond_18
    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    return-void
.end method

.method private static array(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private buy(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v0, p1, p2, p3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->buy(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private static careerArrays(Lorg/json/JSONObject;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Car"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "TIn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Tou"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 211
    const/4 v2, 0x0

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    move v4, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v6, "TID"

    const-string v7, "Pen"

    const-string v8, "Sco"

    const-string v9, "Pla"

    const-string v10, "Tea"

    if-ge v4, v5, :cond_5

    .line 212
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v11, "Tab"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "SIn"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 213
    const-string v13, "CRo"

    const-string v14, "PRo"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    move v14, v2

    :goto_1
    const-string v15, "NT"

    const/4 v2, 0x2

    if-ge v14, v2, :cond_1

    aget-object v2, v13, v14

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz p1, :cond_0

    const/16 v15, 0x80

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    :goto_2
    invoke-static {v2, v10, v15, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {v2, v8, v15, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v17, v1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v7, v15, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    const/4 v2, 0x0

    goto :goto_1

    .line 214
    :cond_1
    move-object/from16 v17, v1

    if-eqz p1, :cond_2

    const/16 v1, 0x80

    goto :goto_3

    :cond_2
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "Win"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "Los"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "GoF"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "GoA"

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "Sta"

    invoke-static {v11, v7, v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 215
    if-eqz p1, :cond_3

    const/16 v15, 0x80

    goto :goto_4

    :cond_3
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    :goto_4
    invoke-static {v12, v10, v15, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {v12, v6, v15, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 216
    if-eqz p1, :cond_4

    const/16 v1, 0x200

    const-string v2, "Fix"

    invoke-static {v5, v2, v1, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 211
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 218
    :cond_5
    if-eqz p1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Mai"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Res"

    const/16 v3, 0x2c

    invoke-static {v0, v2, v3, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 219
    :cond_6
    return-void
.end method

.method private chooseCaptain(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "onboarding"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, "PID"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    const-string v5, "pending"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "captain"

    if-nez v6, :cond_1

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Captain already chosen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_1
    const-string v6, "candidates"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x4

    invoke-static {v1, v4, v6}, Lcom/firsttouchgames/dls7/OfflineGame26;->poolPlayer(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v8

    .line 276
    const/4 v9, -0x1

    const/4 v10, 0x0

    const v11, 0x7fffffff

    move v12, v10

    :goto_0
    const/16 v13, 0xb

    if-ge v12, v13, :cond_3

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v1, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "PGP"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v15, v14, :cond_2

    const-string v14, "IRa"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ge v15, v11, :cond_2

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move v11, v9

    move v9, v12

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 277
    :cond_3
    const/4 v13, 0x1

    invoke-static {v1, v4, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->poolPlayer(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_7

    if-ltz v9, :cond_c

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    const-string v8, "PPt"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "ShN"

    add-int/2addr v9, v13

    invoke-virtual {v6, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    sub-int/2addr v9, v13

    :goto_1
    if-ltz v9, :cond_7

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v11, :cond_6

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_2
    if-ltz v14, :cond_5

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    if-ne v15, v13, :cond_4

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 279
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "DrT"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "ICp"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move v9, v10

    :goto_3
    const/4 v11, 0x5

    if-ge v9, v11, :cond_8

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "Man"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "Ro"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v6, "Onb"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "PkM"

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "PkC"

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "Car"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "Mai"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "Ini"

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v5, "Common"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "Economy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "Onboarding"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "WelcomeReward"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "Coins"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-string v7, "welcome-coins"

    const-string v8, "welcome_reward"

    invoke-static {v1, v7, v5, v6, v8}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    const-string v5, "Gems"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-string v7, "welcome-gems"

    invoke-static {v1, v7, v5, v6, v8}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 282
    const-string v5, "GKCoaches"

    const-string v6, "NGC"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v14

    const-string v5, "TechnicalCoaches"

    const-string v6, "NTC"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v15

    const-string v5, "FitnessCoaches"

    const-string v6, "NFC"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v16

    const-string v5, "Scouts"

    const-string v6, "NSc"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v5, "Agents"

    const-string v6, "NAg"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v5, "Physios"

    const-string v6, "NPh"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v19

    const-string v5, "FormBoosts"

    const-string v6, "NFB"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v14 .. v20}, [[Ljava/lang/String;

    move-result-object v5

    .line 283
    move v6, v10

    :goto_4
    const/4 v7, 0x7

    if-ge v6, v7, :cond_b

    aget-object v7, v5, v6

    aget-object v8, v7, v10

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_a

    :cond_9
    goto :goto_6

    :cond_a
    const-string v9, "Stf"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    aget-object v7, v7, v13

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v9, v10

    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 284
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "career-initial-market-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->refreshMarket(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    return-object v1

    .line 277
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No starter for captain position"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing captain data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown captain"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Career already exists"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static contains(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
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

.method private static copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static counts(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private designPurchase25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    const-string v0, "SyncedMod"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUYKIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "KTU"

    goto :goto_0

    :cond_0
    const-string v1, "LTU"

    .line 416
    :goto_0
    const-string v2, "type"

    invoke-static {p2, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v4, "Common"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "CustomData"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v0, "KitTypeCost"

    goto :goto_1

    :cond_1
    const-string v0, "LogoTemplateCost"

    :goto_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 418
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    const-string v3, "Cr"

    invoke-static {p2, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    const-string v4, "Gm"

    invoke-static {p2, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 420
    const-string v5, "design_quotes25_migrated"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v7

    .line 421
    :goto_2
    if-nez v5, :cond_4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v3, v5, :cond_3

    neg-int v0, v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v4, v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom design price changed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "DrT"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 424
    :cond_5
    invoke-static {p1, p2, p3, v7}, Lcom/firsttouchgames/dls7/OfflineGame26;->pay(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)V

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gt p1, v2, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    .line 425
    return-void

    .line 417
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown custom design"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


.method private static lockTransferMarketPlayer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMP"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMPI"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    const-string v5, "Lkd"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "RTi"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private static exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    const-string v1, "Invalid manager purchase "

    if-eqz v0, :cond_1

    .line 448
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    long-to-double v6, v2

    cmpl-double p0, v4, v6

    if-nez p0, :cond_0

    long-to-int p0, v2

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private finishMatch(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Car"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Mai"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "NFx"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 328
    const-string v7, "HID"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "AID"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "HSc"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "ASc"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 329
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v8, v7, :cond_6

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_6

    if-ltz v11, :cond_6

    if-ltz v12, :cond_6

    const/16 v6, 0x63

    if-gt v11, v6, :cond_6

    if-gt v12, v6, :cond_6

    .line 330
    const-string v6, "PlayerIDs"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "Energy"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 331
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v15, v14}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    if-ltz v15, :cond_0

    const v9, 0x927c

    if-gt v15, v9, :cond_0

    invoke-static {v1, v14}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v14, "En"

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid energy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Foreign match player"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Energy list mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_3
    const-string v6, "Mat"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    invoke-virtual {v7, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->activeIndex(Lorg/json/JSONObject;)I

    move-result v7

    const-string v9, "TIn"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "Tou"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "TID"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 333
    const-string v13, "Res"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "Pla"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "Tea"

    invoke-virtual {v13, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "Sco"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string v11, "HPe"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "APe"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-le v12, v14, :cond_4

    move v12, v15

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-le v12, v11, :cond_5

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "Pen"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 334
    invoke-direct {v0, v1, v2, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->reward(Lorg/json/JSONObject;Lorg/json/JSONObject;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v5

    const-string v9, "career_match"

    invoke-static {v1, v6, v7, v8, v9}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 335
    invoke-static {v1, v2, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->updateStatistics(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 336
    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    invoke-virtual {v4, v1, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->complete(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "coin_reward"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "completed_matches"

    invoke-static {v1, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->roundExtra(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "CrD"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v4, v1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->nextMatch(Lorg/json/JSONObject;)V

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineForm26;->nextMatch(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->refreshMarket(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 338
    return-object v2

    .line 329
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Result does not match pending fixture"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static hash(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeCaptains(Lorg/json/JSONObject;Ljava/util/Random;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v2, "players"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    :goto_1
    const/4 v8, 0x4

    const-string v9, "PPt"

    if-ltz v4, :cond_4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_2

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    if-ne v11, v8, :cond_1

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 109
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "profile"

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "IRa"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v14, "available"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->presentable(Lorg/json/JSONObject;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/16 v13, 0x1fa4

    if-lt v12, v13, :cond_5

    const/16 v13, 0x21fc

    if-gt v12, v13, :cond_5

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    :cond_6
    move-object/from16 v5, p2

    invoke-static {v4, v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v10, 0x9

    if-lt v5, v10, :cond_8

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 111
    move v13, v6

    :goto_4
    if-ge v13, v10, :cond_7

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-static {v14}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v15, "PID"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v14, "ScP"

    invoke-virtual {v8, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    const-string v14, "PDi"

    invoke-virtual {v8, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v14, "Lkd"

    invoke-virtual {v8, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    const-string v14, "RTi"

    invoke-virtual {v8, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v14, "Rev"

    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x4

    goto :goto_4

    .line 112
    :cond_7
    const-string v1, "TrMP"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TrMPI"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pending"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "candidates"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onboarding"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    return-void

    .line 110
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Original captain pool too small"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initializeFresh(Lorg/json/JSONObject;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "metadata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 90
    const-string v5, "DrT"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "LgT"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const v6, 0x7ffffffe

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const-string v8, "UId"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v12, 0x10

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LId"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "TId"

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GPa"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Sys"

    invoke-static {v2, v6}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "UTy"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v6, "players"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v6, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v8, "starter_positions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 93
    move v13, v10

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v15, 0x3

    if-ge v13, v14, :cond_7

    .line 94
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    if-nez v14, :cond_0

    move v15, v10

    goto :goto_1

    :cond_0
    const/4 v7, 0x6

    if-gt v14, v7, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x12

    if-gt v14, v7, :cond_2

    const/4 v15, 0x2

    :cond_2
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 95
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v10, "profile"

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "IRa"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v10, "available"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v0, 0x64ef

    if-eq v10, v0, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    const-string v0, "special_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "position_group"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v15, :cond_3

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "position"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_3

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, v18

    const/4 v10, 0x0

    goto :goto_2

    .line 96
    :cond_4
    move-object/from16 v18, v6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v7, v12

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    const-string v1, "ShN"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "Sig"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, v18

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v12, 0x10

    goto/16 :goto_0

    .line 96
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No original starter for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_special_loop
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_special_done

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "available"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :goto_special_loop

    const-string v7, "special_type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :goto_special_loop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x64ef

    if-eq v7, v10, :goto_special_loop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :goto_special_loop

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v7, "profile"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    add-int/lit8 v13, v13, 0x1

    const-string v7, "ShN"

    invoke-virtual {v1, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "Sig"

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_special_loop

    :cond_special_done
    .line 99
    const-string v0, "PrPs"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PrPl"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Man"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LU"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v5, v2, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v6, "starter_formation"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "Frm"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x5

    if-ge v5, v6, :cond_8

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const-string v5, "Ro"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->initializeCaptains(Lorg/json/JSONObject;Ljava/util/Random;)V

    .line 102
    const-string v1, "Car"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v5}, Lcom/firsttouchgames/dls7/LocalLeague;->fresh(IIZ)Lorg/json/JSONObject;

    move-result-object v6

    const-string v5, "OIn"

    const-string v7, "Sum"

    const-string v8, "ATS"

    filled-new-array {v8, v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v15, :cond_a

    aget-object v8, v5, v7

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v1, v2, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    invoke-virtual {v1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->migrate(Lorg/json/JSONObject;)V

    const-string v1, "Mai"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "Ini"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->careerArrays(Lorg/json/JSONObject;Z)V

    .line 104
    return-void

    .line 98
    :cond_b
    move-object/from16 v2, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starter squad must contain 16 players"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeSeasons(Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    move-object/from16 v0, p1

    const-string v1, "local_seasons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Car"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Mai"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "LTr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 117
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0x80

    if-ne v6, v7, :cond_e

    .line 118
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    const/16 v9, 0x10

    if-ge v7, v8, :cond_2

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_1

    mul-int/lit8 v11, v7, 0x10

    add-int/2addr v11, v10

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const-string v3, "TIn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "Tou"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "TID"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 120
    move v11, v6

    :goto_2
    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ge v11, v12, :cond_d

    .line 121
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const/4 v15, -0x1

    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v6, 0x2

    if-nez v11, :cond_3

    move v12, v13

    goto :goto_3

    :cond_3
    if-ne v11, v13, :cond_4

    const/16 v8, 0xa

    if-ne v14, v8, :cond_6

    const/16 v12, 0x8

    goto :goto_3

    :cond_4
    if-ne v11, v6, :cond_5

    move v12, v9

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 122
    :cond_6
    :goto_3
    if-nez v11, :cond_7

    const-string v6, "MLP"

    goto :goto_4

    :cond_7
    if-ne v11, v13, :cond_8

    const-string v6, "GCF"

    goto :goto_4

    :cond_8
    if-ne v11, v6, :cond_9

    const-string v6, "DCF"

    goto :goto_4

    :cond_9
    const-string v6, "PoF"

    :goto_4
    const-string v8, "Sum"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 123
    if-ltz v14, :cond_b

    if-eq v6, v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :cond_b
    :goto_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "bit"

    invoke-virtual {v8, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "done"

    invoke-virtual {v8, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "winner"

    invoke-virtual {v8, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v13, :cond_c

    move v15, v6

    :cond_c
    const-string v6, "finish"

    invoke-virtual {v8, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 120
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x10

    goto :goto_2

    .line 125
    :cond_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "version"

    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "division"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "tree"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "stages"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    invoke-virtual {v2, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->validate(Lorg/json/JSONObject;)V

    .line 127
    return-void

    .line 117
    :cond_e
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported native division tree"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private managerPurchase25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    move-object/from16 v0, p2

    const-string v1, "SyncedMod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 430
    const-string v3, "BUYHS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "BUYOUTF"

    if-eqz v3, :cond_1

    const/16 v3, 0x29

    if-gt v2, v3, :cond_0

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_0

    const-string v3, "HSUB"

    const-string v5, "ManagerHairStyleCost"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown manager hair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    const-string v3, "BUYFH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xc

    if-gt v2, v3, :cond_2

    const-string v3, "FHUB"

    const-string v5, "ManagerFacialHairCost"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown manager facial hair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_3
    const-string v3, "BUYAC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    ushr-int/lit8 v3, v2, 0x4

    const/16 v5, 0x8

    if-gt v3, v5, :cond_4

    and-int/lit8 v3, v2, 0xf

    const/4 v5, 0x5

    if-gt v3, v5, :cond_4

    const-string v3, "AUB"

    const-string v5, "ManagerAccessoryCost"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown manager accessory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "OfU"

    const-string v5, "ManagerOutfitCost"

    .line 435
    :goto_0
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v8, "Common"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "CustomData"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 436
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown manager outfit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 437
    :goto_1
    const-string v7, "Cr"

    invoke-static {v0, v7}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    const-string v8, "Gm"

    invoke-static {v0, v8}, Lcom/firsttouchgames/dls7/OfflineGame26;->exactPurchaseInt25(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 438
    const/4 v9, 0x0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-ne v7, v10, :cond_f

    neg-int v5, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v8, v5, :cond_f

    .line 439
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "DrT"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_8

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const-wide/16 v10, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v3

    goto :goto_2

    :cond_9
    ushr-int/lit8 v3, v2, 0x5

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v12

    and-int/lit8 v3, v2, 0x1f

    shl-long v14, v10, v3

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_2

    :cond_a
    move v3, v9

    .line 441
    :goto_2
    if-eqz v3, :cond_b

    return-void

    .line 442
    :cond_b
    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static {v3, v0, v8, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->pay(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gt v0, v2, :cond_c

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_3

    :cond_c
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    goto :goto_5

    .line 444
    :cond_d
    ushr-int/lit8 v0, v2, 0x5

    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v1, v0, :cond_e

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_4

    :cond_e
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    and-int/lit8 v1, v2, 0x1f

    shl-long v1, v10, v1

    or-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 445
    :goto_5
    return-void

    .line 438
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Manager purchase price changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_10
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown manager purchase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static merge(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->merge(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method private static mergeClientChanges(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "Sys"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->applyConsent(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    const-string v2, "Prf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 237
    :cond_2
    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 238
    const-string v18, "Sce"

    const-string v19, "DPB"

    const-string v2, "Cur"

    const-string v3, "Car"

    const-string v4, "PrPs"

    const-string v5, "RcPls"

    const-string v6, "DSPls"

    const-string v7, "Stf"

    const-string v8, "TrMP"

    const-string v9, "PrEM"

    const-string v10, "SPa"

    const-string v11, "PrL"

    const-string v12, "DvPl"

    const-string v13, "DCh"

    const-string v14, "DaO"

    const-string v15, "DCP"

    const-string v16, "WCS"

    const-string v17, "WCP"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x12

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "Sta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/firsttouchgames/dls7/OfflineStadium26;->mergeSelection(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v10, "UScB"

    const-string v11, "USt"

    const-string v5, "Fac"

    const-string v6, "ScM"

    const-string v7, "Frm"

    const-string v8, "PtP"

    const-string v9, "USuB"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    move v5, v3

    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_4

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 240
    :cond_4
    const-string v2, "DrT"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_5

    const-string v8, "LTU"

    const-string v9, "KTU"

    const-string v4, "HSUB"

    const-string v5, "FHUB"

    const-string v6, "OfU"

    const-string v7, "AUB"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_2
    const/4 v6, 0x6

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 243
    :cond_5
    const/4 v4, 0x0

    if-nez v2, :cond_6

    move-object v2, v4

    goto :goto_3

    :cond_6
    const-string v5, "Man"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_3
    const-string v5, "LU"

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 244
    :goto_4
    if-eqz v4, :cond_13

    .line 245
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 246
    move v9, v3

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    move v9, v3

    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 250
    :cond_9
    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ne v9, v11, :cond_a

    move v9, v10

    goto :goto_7

    :cond_a
    move v9, v3

    :goto_7
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 251
    move v12, v3

    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/16 v14, 0x13

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v12, v13, :cond_b

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 256
    :cond_b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-le v12, v14, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v12, v14, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gt v12, v13, :cond_c

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v12

    if-ne v12, v14, :cond_c

    invoke-interface {v7, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_9

    :cond_c
    move v10, v3

    .line 257
    :goto_9
    if-nez v9, :cond_d

    if-eqz v10, :cond_e

    :cond_d
    invoke-static {v0, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->acceptLineup(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_c

    .line 258
    :cond_f
    if-nez v9, :cond_13

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v8, v3

    :goto_a
    if-ge v8, v14, :cond_10

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_13
    :goto_c
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->merge(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 261
    return-void
.end method

.method private static object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static pay(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    const-string v0, "Cr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    const-string v0, "Cost"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    :goto_0
    const-string v0, "Gm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p3, :cond_2

    if-ltz p1, :cond_2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-coins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    neg-int p3, p3

    int-to-long v1, p3

    const-string p3, "local_purchase"

    invoke-static {p0, v0, v1, v2, p3}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-gems"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    neg-int p1, p1

    int-to-long v0, p1

    invoke-static {p0, p2, v0, v1, p3}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 453
    :cond_1
    return-void

    .line 451
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative price"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "PrPl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->poolPlayer(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown personal player"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static poolPlayer(Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

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

    invoke-static {v2, p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

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

.method private static presentable(Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    const-string v0, "native_teams"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private price(Lorg/json/JSONObject;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v3, "Common"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PlayerValues"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Mid"

    const-string v4, "Att"

    const-string v5, "Gk"

    const-string v6, "Def"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "PGP"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "IRa"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "MinRating"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "MaxRating"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "MinValue"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MaxValue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v0, "ExpFactorWhole"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v0, "ExpFactorTenths"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v2, v2, v16

    add-double/2addr v14, v2

    .line 456
    sub-double/2addr v12, v10

    sub-double/2addr v4, v6

    sub-double/2addr v8, v6

    div-double/2addr v4, v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    double-to-int v0, v10

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x5

    rsub-int/lit8 v2, p2, 0x64

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private refreshMarket(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "TrMP"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "TrMPI"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 460
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, "Lkd"

    const-string v12, "PID"

    if-ge v9, v10, :cond_1

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "PrEM"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "ScPl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 464
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_2
    const-string v13, "PPt"

    const/4 v14, 0x4

    if-ltz v9, :cond_7

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    goto :goto_4

    :cond_4
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    sub-int/2addr v13, v10

    :goto_3
    if-ltz v13, :cond_6

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    if-ne v15, v14, :cond_5

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 465
    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    const-string v10, "IRa"

    if-ge v8, v15, :cond_8

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    invoke-static {v1, v15}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    div-int/2addr v9, v8

    iget-object v8, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v15, "players"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .line 466
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v14, "profile"

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    move-object/from16 v18, v4

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v20, v10

    const-string v10, "available"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->presentable(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->isRecoverable(Lorg/json/JSONObject;I)Z

    move-result v4

    if-nez v4, :cond_9

    add-int/lit16 v4, v9, -0x4b0

    if-lt v14, v4, :cond_9

    add-int/lit16 v4, v9, 0x320

    if-gt v14, v4, :cond_9

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    const/4 v14, 0x4

    goto :goto_6

    .line 467
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    new-instance v2, Ljava/util/Random;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v15, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v4, "Common"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "TransferMarket"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "TotalPlayers"

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 468
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v7, "RTi"

    if-ge v5, v2, :cond_d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 469
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x4

    invoke-static {v1, v9, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->poolPlayer(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 470
    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    :cond_b
    invoke-static {v0, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->array(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 471
    :cond_c
    :goto_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "ScP"

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "PDi"

    invoke-virtual {v0, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "Rev"

    const/4 v9, 0x1

    invoke-virtual {v0, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 468
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    .line 473
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "RMa"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    add-long/2addr v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 474
    return-void
.end method

.method private static releasePresentation(IIII)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "PID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Level"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ReleasePlayerID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Reward"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "RewardType"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "RewardLevel"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static resize(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-ltz p2, :cond_3

    const/16 v2, 0x200

    if-gt p2, v2, :cond_3

    .line 222
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    instance-of v3, p3, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    return-void

    .line 221
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid native array count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private restore(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->pay(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p3, "PID"

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    move p3, v0

    :goto_0
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    if-ltz p2, :cond_0

    if-ne v1, p2, :cond_1

    :cond_0
    invoke-static {p1, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "En"

    const v3, 0x927c

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InI"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "InT"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 411
    :cond_2
    return-void
.end method

.method private reward(Lorg/json/JSONObject;Lorg/json/JSONObject;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    const-string v0, "Fft"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 342
    :cond_0
    const-string v0, "local_seasons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "division"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0x8

    if-ge p3, v3, :cond_1

    const-string v10, "Amateur"

    const-string v11, "Academy"

    const-string v4, "Legendary"

    const-string v5, "Elite"

    const-string v6, "Div1"

    const-string v7, "Div2"

    const-string v8, "Div3"

    const-string v9, "Div4"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v0

    goto :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    const-string p3, "Playoffs"

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p3, v0, :cond_3

    const-string p3, "GCCup_Groups"

    goto :goto_0

    :cond_3
    if-ne p3, v2, :cond_4

    const-string p3, "GCCup_Knockout"

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    const-string p3, "DiamondCup"

    goto :goto_0

    :cond_5
    const/16 v0, 0xc

    if-ne p3, v0, :cond_6

    const-string p3, "GoldCup"

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    if-ne p3, v0, :cond_7

    const-string p3, "SilverCup"

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    if-ne p3, v0, :cond_8

    const-string p3, "BronzeCup"

    goto :goto_0

    :cond_8
    const/16 v0, 0xf

    if-ne p3, v0, :cond_9

    const-string p3, "IntCup_Groups"

    goto :goto_0

    :cond_9
    const/16 v0, 0x10

    if-ne p3, v0, :cond_a

    const-string p3, "IntCup_Knockout"

    goto :goto_0

    :cond_a
    const-string p3, "AllstarCup"

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v3, "Common"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "Economy"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "HID"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "HSc"

    const-string v7, "ASc"

    const/16 v8, 0x102

    if-ne v5, v8, :cond_b

    move-object v5, v6

    goto :goto_1

    :cond_b
    move-object v5, v7

    :goto_1
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_c

    move-object v6, v7

    :cond_c
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 344
    if-le v5, p2, :cond_d

    const-string v4, "CareerWinMatchCoins"

    goto :goto_2

    :cond_d
    if-ne v5, p2, :cond_e

    const-string v4, "CareerDrawMatchCoins"

    goto :goto_2

    :cond_e
    const-string v4, "CareerLoseMatchCoins"

    :goto_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 345
    const-string v6, "GoalsScoredRewardCap"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v5, "CareerPerGoalCoins"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v2, v5

    add-int/2addr v4, v2

    .line 346
    if-nez p2, :cond_f

    const-string p2, "CareerCleanSheetCoins"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr v4, p2

    .line 347
    :cond_f
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "Sta"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "Fac"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "Stadium"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "CommercialCentreBoosts"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "MatchWinningsPercentIncrease"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 348
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    mul-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x64

    add-int/2addr v4, p1

    return v4
.end method

.method private static roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

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

.method private static roundExtra(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    move-object/from16 v0, p1

    const-string v1, "round_result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "round_standings"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 359
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "Pla"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "Win"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "Los"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "GoF"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v12, "GoA"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 360
    :cond_0
    const-string v10, "round_groups"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "Tea"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v12, "next_round_teams"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x1

    if-le v10, v13, :cond_3

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    div-int/2addr v14, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v15, v9, :cond_2

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    const/16 v13, 0x102

    if-ne v9, v13, :cond_1

    div-int v16, v15, v14

    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move/from16 v9, v16

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 361
    :goto_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "local_seasons"

    move-object/from16 v15, p0

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "division"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "UserLeagueInTree"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "tournament_id"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "TournID"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "league"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "League"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "round"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    const-string v15, "Round"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "finish"

    const/4 v15, -0x1

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v14, "Finish"

    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 362
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    const-string v14, "PrevRoundNumTeams"

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "PrevRoundNumGroups"

    invoke-virtual {v0, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "PrevRoundUserGroup"

    invoke-virtual {v0, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "PrevRoundTeamIDs"

    invoke-virtual {v0, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "Sco"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v11, "PrevRoundScores"

    invoke-virtual {v0, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "Pen"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v9, "PrevRoundPens"

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 363
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v9, "CurRoundNumTeams"

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CurRoundTeamIDs"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableNumTeams"

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableNumGroups"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableTeamIDs"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTablePlayed"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableWin"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableLoss"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableGoalsFor"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "LeagueTableGoalsAgainst"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    const-string v5, "NewSuspensionPlayerIDs"

    const-string v6, "FinishedSuspensionPlayerIDs"

    const-string v1, "NewInjuryPlayerIDs"

    const-string v2, "NewInjuryIDs"

    const-string v3, "NewInjuryNumGames"

    const-string v4, "FinishedInjuryPlayerIDs"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v9, v2, :cond_4

    aget-object v2, v1, v9

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private sell(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    const-string v3, "PID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, -0x1

    move v7, v4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    move v7, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 371
    :cond_1
    if-ltz v7, :cond_2c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v8, 0x10

    if-le v6, v8, :cond_2c

    invoke-static {v2, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 372
    const-string v8, "PGP"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_5

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_3

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v2, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

    add-int/lit8 v12, v12, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-lt v12, v11, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot release last goalkeeper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_5
    :goto_2
    const-string v10, "SwI"

    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 374
    const/16 v12, 0xb

    const/4 v13, 0x1

    if-eq v10, v4, :cond_d

    const v14, 0xffff

    if-eq v10, v14, :cond_d

    .line 375
    move v15, v4

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v14, v5, :cond_7

    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v10, :cond_6

    move v15, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 376
    :cond_7
    if-eq v10, v9, :cond_c

    if-ltz v15, :cond_c

    if-ge v7, v12, :cond_8

    if-lt v15, v12, :cond_c

    .line 377
    :cond_8
    if-ge v7, v12, :cond_e

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    move v5, v13

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    invoke-static {v2, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_a

    move v14, v13

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    if-ne v5, v14, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid goalkeeper replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid release replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_d
    move v15, v4

    :cond_e
    :goto_6
    if-ge v7, v12, :cond_14

    if-gez v15, :cond_14

    .line 382
    move v5, v12

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_10

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v2, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v10, v14, :cond_f

    move v15, v5

    goto :goto_8

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 383
    :cond_10
    :goto_8
    if-gez v15, :cond_12

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_12

    move v5, v12

    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_12

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v2, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->player(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_11

    move v15, v5

    goto :goto_a

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 384
    :cond_12
    :goto_a
    if-ltz v15, :cond_13

    .line 385
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    goto :goto_b

    .line 384
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No available release replacement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_14
    :goto_b
    const/16 v5, 0x13

    if-ge v7, v5, :cond_15

    if-lt v15, v12, :cond_15

    invoke-virtual {v3, v7, v10}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_15
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 388
    :goto_c
    const-string v5, "PPt"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_d
    if-ltz v14, :cond_17

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-ne v4, v13, :cond_16

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v14, v14, -0x1

    const/4 v4, -0x1

    goto :goto_d

    .line 389
    :cond_17
    const-string v4, "IRa"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v14, 0x1f40

    const-string v12, "Common"

    if-lt v5, v14, :cond_18

    const-string v4, "Legendary"

    goto :goto_e

    :cond_18
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1b58

    if-lt v4, v5, :cond_19

    const-string v4, "Rare"

    goto :goto_e

    :cond_19
    move-object v4, v12

    .line 391
    :goto_e
    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v14, "players"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v14, "special_type"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x3

    if-eq v5, v13, :cond_1b

    if-eq v5, v11, :cond_1b

    if-ne v5, v14, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v5, 0x0

    goto :goto_10

    :cond_1b
    :goto_f
    move v5, v13

    .line 392
    :goto_10
    iget-object v11, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "ReleasePlayers"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v5, :cond_1c

    const-string v12, "SpecialAward"

    goto :goto_11

    :cond_1c
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "GkAward"

    goto :goto_11

    :cond_1d
    const-string v12, "OutfieldAward"

    :goto_11
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 393
    const-string v11, "Level"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "Count"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v14, "TypeMask"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_12
    move/from16 v17, v10

    const/4 v10, 0x4

    if-ge v13, v10, :cond_1f

    const/4 v10, 0x1

    shl-int v18, v10, v13

    and-int v10, v4, v18

    if-eqz v10, :cond_1e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v17

    goto :goto_12

    .line 394
    :cond_1f
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 395
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 396
    const-string v10, "CoT"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "CoL"

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_20

    goto :goto_13

    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid release coach reward"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_21
    :goto_13
    const-string v10, "type"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    if-eqz v5, :cond_22

    const/16 v16, 0x3

    goto :goto_14

    :cond_22
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_23

    const/16 v16, 0x0

    goto :goto_14

    :cond_23
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_24

    const/16 v16, 0x2

    goto :goto_14

    :cond_24
    const/16 v16, 0x1

    :goto_14
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    move/from16 v10, v16

    goto :goto_15

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid release coach type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    move v10, v4

    .line 398
    :goto_15
    const-string v1, "NFC"

    const-string v4, "NCC"

    const-string v5, "NGC"

    const-string v8, "NTC"

    filled-new-array {v5, v8, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Stf"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual {v1, v11, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 399
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "DrT"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "Man"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "Ro"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x0

    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_29

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-ne v4, v9, :cond_28

    const/16 v4, 0xb

    if-lt v15, v4, :cond_27

    if-ge v7, v4, :cond_27

    move/from16 v13, v17

    const/4 v8, 0x1

    goto :goto_17

    :cond_27
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    :goto_17
    invoke-virtual {v1, v5, v13}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    goto :goto_18

    :cond_28
    const/16 v4, 0xb

    const/4 v8, 0x1

    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 400
    :cond_29
    const-string v1, "matchday_pending_signing"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_2a

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2a
    const-string v1, "matchday_repair_pending"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long v13, v3, v7

    iget-object v1, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    move-object/from16 v2, p1

    move-object v3, v6

    move v4, v10

    move v5, v11

    move v6, v12

    move-wide v7, v13

    invoke-virtual/range {v1 .. v8}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->rememberRelease(Lorg/json/JSONObject;Lorg/json/JSONObject;IIIJ)V

    .line 402
    invoke-static {v9, v12, v11, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->releasePresentation(IIII)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ReleasedAt"

    invoke-virtual {v1, v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 394
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported release reward type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum squad size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stadiumEdit25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    const-string v0, "PTIndex"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->stadium:Lcom/firsttouchgames/dls7/OfflineStadium26;

    invoke-virtual {v0, p1, p2, p3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    const-string v3, "Invalid DLS25 pitch index"

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_2
    :goto_0
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_3

    const-wide/16 v4, 0x6

    cmp-long v4, v1, v4

    if-gtz v4, :cond_3

    .line 231
    invoke-static {p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    .line 232
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->stadium:Lcom/firsttouchgames/dls7/OfflineStadium26;

    invoke-virtual {v0, p1, p2, p3}, Lcom/firsttouchgames/dls7/OfflineStadium26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 233
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "Sta"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "PtP"

    invoke-virtual {p1, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p2

    .line 230
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


.method private static lockTransferMarketPlayer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMP"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMPI"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    const-string v5, "Lkd"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "RTi"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private startPrizeLadder(Lorg/json/JSONObject;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v2, "Common"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrizeLadder"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Ladders"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 319
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "dd/MM/yyyy"

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 320
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move v11, v7

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "StartDate"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    div-long/2addr v13, v4

    const-string v15, "StartSeconds"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v13, v15

    cmp-long v15, v13, v2

    if-gtz v15, :cond_0

    const-string v15, "LadderLength"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v15, v13

    cmp-long v15, v2, v15

    if-gez v15, :cond_0

    cmp-long v15, v13, v8

    if-lez v15, :cond_0

    move-object v10, v12

    move-wide v8, v13

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 321
    :cond_1
    if-eqz v10, :cond_3

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrL"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "LadderID"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 323
    const-string v3, "LID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CuT"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PoT"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PrC"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    :cond_2
    const-string v2, "Unl"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 325
    return-void

    .line 321
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No active ladder in original configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static updateStatistics(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Car"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ATS"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "OvS"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PSt"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->array(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "Sta"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->array(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 352
    const-string v4, "Apps"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->counts(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "Goals"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->counts(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "Assists"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/firsttouchgames/dls7/OfflineGame26;->counts(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v10

    if-eqz v10, :cond_4

    filled-new-array {v1, v3}, [Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    const/4 v12, 0x0

    move v13, v9

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    const-string v15, "PID"

    if-ge v13, v14, :cond_2

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v8, :cond_1

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    if-nez v12, :cond_3

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "App"

    invoke-static {v12, v13, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "Gol"

    invoke-static {v12, v13, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "Ass"

    invoke-static {v12, v13, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Foreign scorer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "GMS"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->array(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "HSc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ASc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "HID"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x102

    if-ne v5, v6, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_8

    move v2, v3

    :cond_8
    const-string v0, "Pla"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-le v5, v2, :cond_9

    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v9

    :goto_3
    const-string v4, "Win"

    invoke-static {v1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-ge v5, v2, :cond_a

    move v9, v3

    :cond_a
    const-string v0, "Los"

    invoke-static {v1, v0, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v0, "GoF"

    invoke-static {v1, v0, v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v0, "GoA"

    invoke-static {v1, v0, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 355
    return-void
.end method

.method private static validate(Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->personal(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v7, "PID"

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v8, "PPt"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v9, v4

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate personal player in pool"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v7, "PSt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    const-string v7, "FSt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid attributes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :cond_3
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move v3, v4

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid squad player"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :cond_5
    const-string v1, "DSPls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "DSPl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 479
    move v3, v4

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate squad registry player"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    :cond_7
    invoke-interface {v2, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 481
    const-string p0, "Cr"

    const-string v1, "Gm"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    :goto_4
    const/4 v1, 0x2

    if-ge v4, v1, :cond_9

    aget-object v1, p0, v4

    const-string v2, "Cur"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-ltz v3, :cond_8

    const-wide/32 v5, 0x77359400

    cmp-long v1, v1, v5

    if-gtz v1, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid balance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :cond_9
    return-void

    .line 480
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Squad registry does not match ownership"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V
    .locals 0

    .line 56
    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    return-void
.end method

.method passConfiguration25()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    const-string v1, "Common"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "SeasonPass"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method prepare(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
    .locals 64
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const-string v2, "SEASONPASS_STARTSEASON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ClickPurchase"

    const-string v5, "LocalPurchase"

    if-eqz v3, :cond_1

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pass purchase requires button press"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    invoke-static {v10, v3, v6, v7}, Lcom/firsttouchgames/dls7/LocalPass25;->refresh(Lorg/json/JSONObject;Lorg/json/JSONObject;J)Z

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v11

    invoke-virtual {v3, v10, v6, v7}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->initialize(Lorg/json/JSONObject;J)V

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v11

    invoke-virtual {v3, v10, v6, v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->pruneRecovery(Lorg/json/JSONObject;J)V

    const-string v3, "receipts"

    invoke-static {v10, v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 131
    new-instance v6, Ljava/util/HashSet;

    const-string v19, "DAILYOBJECTIVESCOLLECTREWARDS"

    const-string v20, "SEASONPASS_ENDSEASON"

    const-string v14, "NEWUSER"

    const-string v15, "SIGNIN"

    const-string v16, "FLUSHMODS"

    const-string v17, "FLUSH_UPDATEUSERTYPE"

    const-string v18, "DAILYOBJECTIVESSET"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    nop

    .line 133
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "USE_CLASSIC_COACH"

    const-string v8, "PERMANENTBOOST"

    const-string v14, "SEASONPASS_COLLECTPRIZE"

    if-nez v6, :cond_15

    .line 134
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "kind"

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 135
    const-string v62, "FCFormationGroup"

    const-string v63, "Frm"

    const-string v19, "PCs"

    const-string v20, "ProfileState"

    const-string v21, "PID"

    const-string v22, "TID"

    const-string v23, "HID"

    const-string v24, "AID"

    const-string v25, "HSc"

    const-string v26, "ASc"

    const-string v27, "Fft"

    const-string v28, "PlayerIDs"

    const-string v29, "Goals"

    const-string v30, "Assists"

    const-string v31, "Apps"

    const-string v32, "Energy"

    const-string v33, "type"

    const-string v34, "Lev"

    const-string v35, "Cr"

    const-string v36, "Gm"

    const-string v37, "Cost"

    const-string v38, "Time"

    const-string v39, "Age"

    const-string v40, "NP"

    const-string v41, "SBo"

    const-string v42, "NGa"

    const-string v43, "GmC"

    const-string v44, "PlayerID"

    const-string v45, "SC0"

    const-string v46, "SC1"

    const-string v47, "SC2"

    const-string v48, "SC3"

    const-string v49, "SC4"

    const-string v50, "SC5"

    const-string v51, "SC6"

    const-string v52, "SC7"

    const-string v53, "SC8"

    const-string v54, "SC9"

    const-string v55, "STCost"

    const-string v56, "PTIndex"

    const-string v57, "PTCost"

    const-string v58, "FCCredits"

    const-string v59, "FCGems"

    const-string v60, "FCLevel"

    const-string v61, "FCIndex"

    filled-new-array/range {v19 .. v63}, [Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    :goto_1
    const/16 v15, 0x2d

    if-ge v11, v15, :cond_3

    aget-object v15, v12, v11

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v21, v12

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    move-object/from16 v21, v12

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v21

    goto :goto_1

    .line 136
    :cond_3
    const-string v11, "FCCoins"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "Pr"

    const-string v12, "SPrP"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    const/4 v15, 0x2

    if-ge v12, v15, :cond_6

    aget-object v15, v11, v12

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v21, v11

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    move-object/from16 v21, v11

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v21

    goto :goto_3

    .line 138
    :cond_6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "Stats"

    const-string v12, "Cla"

    const-string v15, "CoT"

    move-object/from16 v21, v8

    const-string v8, "ReI"

    filled-new-array {v15, v8, v11, v12}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x4

    if-ge v11, v12, :cond_9

    aget-object v12, v8, v11

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v21, v8

    .line 139
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "CoL"

    const-string v11, "Cos"

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x2

    if-ge v11, v12, :cond_b

    aget-object v12, v8, v11

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 140
    :cond_b
    const-string v8, "STADIUMEDIT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "USui"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_c
    const-string v8, "USEPHYSIO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "Evs"

    const-string v11, "DMo"

    const-string v12, "Bst"

    const-string v15, "Hea"

    filled-new-array {v12, v15, v8, v11}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    :goto_7
    const/4 v12, 0x4

    if-ge v11, v12, :cond_e

    aget-object v12, v8, v11

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 142
    :cond_e
    const-string v8, "FORMBOOST"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "Rat"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "PrU"

    const-string v11, "BoU"

    const-string v12, "SID"

    filled-new-array {v12, v8, v11, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_8
    const/4 v8, 0x5

    if-ge v5, v8, :cond_11

    aget-object v8, v4, v5

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 144
    :cond_11
    const-string v4, "SCENARIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "Sc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v35, "APo"

    const-string v36, "ADa"

    const-string v22, "ID"

    const-string v23, "Cos"

    const-string v24, "Hom"

    const-string v25, "Dif"

    const-string v26, "CPR"

    const-string v27, "OPR"

    const-string v28, "TSD"

    const-string v29, "IHS"

    const-string v30, "IAS"

    const-string v31, "GId"

    const-string v32, "GPo"

    const-string v33, "GDa"

    const-string v34, "AId"

    filled-new-array/range {v22 .. v36}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_13
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 145
    :cond_14
    invoke-static {v6}, Lcom/firsttouchgames/dls7/OfflineGame26;->hash(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_a

    .line 133
    :cond_15
    move-object/from16 v21, v8

    const/4 v11, 0x0

    .line 147
    :goto_a
    if-nez v11, :cond_16

    const/4 v15, 0x0

    goto :goto_b

    :cond_16
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 148
    :goto_b
    const-string v12, "metadata"

    const-string v4, "SELLPLAYER"

    const-string v5, "BUYPLAYER"

    const-string v8, "extra"

    if-nez v15, :cond_3c

    .line 149
    const-string v15, "onboarding"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 150
    const-string v6, "NEWUSER"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v23, v8

    const-string v8, "SIGNIN"

    if-nez v22, :cond_18

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v25, v7

    move-object/from16 v24, v12

    move-object/from16 v22, v13

    goto :goto_e

    :cond_18
    :goto_c
    if-eqz v15, :cond_1b

    move-object/from16 v22, v13

    const-string v13, "pending"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 151
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v15, "LId"

    move-object/from16 v24, v12

    const-string v12, "GPa"

    filled-new-array {v15, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    :goto_d
    move-object/from16 v25, v7

    const/4 v7, 0x2

    if-ge v15, v7, :cond_1c

    aget-object v7, v12, v15

    move-object/from16 v26, v12

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_19

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_19

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v25

    move-object/from16 v12, v26

    goto :goto_d

    .line 150
    :cond_1a
    move-object/from16 v25, v7

    move-object/from16 v24, v12

    goto :goto_e

    :cond_1b
    move-object/from16 v25, v7

    move-object/from16 v24, v12

    move-object/from16 v22, v13

    .line 153
    :cond_1c
    :goto_e
    const-string v7, "PMd"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/firsttouchgames/dls7/OfflineGame26;->mergeClientChanges(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 154
    invoke-static {v10, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->applyConsent(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 157
    invoke-direct {v0, v10, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->applyQueued(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 158
    const-string v7, "CAREERENDMATCH"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    const-string v12, "CAREERNEXTSEASON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v12, 0x0

    goto :goto_10

    :cond_1e
    :goto_f
    const/4 v12, 0x1

    :goto_10
    if-eqz v12, :cond_1f

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->careerArrays(Lorg/json/JSONObject;Z)V

    .line 159
    :cond_1f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string v6, "FLUSHMODS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string v6, "FLUSH_UPDATEUSERTYPE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    move-object/from16 v15, v23

    const/4 v13, 0x1

    goto/16 :goto_11

    .line 160
    :cond_20
    const-string v6, "CAREERINIT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-direct {v0, v10, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->chooseCaptain(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    const/4 v13, 0x1

    goto/16 :goto_11

    .line 161
    :cond_21
    const-string v6, "PRIZELADDER_STARTLADDER"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-direct {v0, v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->startPrizeLadder(Lorg/json/JSONObject;)V

    move-object/from16 v15, v23

    const/4 v13, 0x1

    goto/16 :goto_11

    .line 162
    :cond_22
    const-string v6, "PRIZELADDER_COLLECTPRIZE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    new-instance v2, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;

    iget-object v3, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-direct {v2, v3, v4, v5}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/firsttouchgames/dls7/OfflineRecruitment26;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    move-object v3, v10

    move-object/from16 v4, p2

    move-object v5, v11

    const/4 v13, 0x1

    move-wide v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 163
    :cond_23
    const/4 v13, 0x1

    const-string v6, "DAILYOBJECTIVESSET"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v2, "SetDailyObj"

    invoke-virtual {v3, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 164
    :cond_24
    const-string v6, "DAILYOBJECTIVESCOLLECTREWARDS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 165
    :cond_25
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-direct {v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->finishMatch(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    invoke-virtual {v2, v10, v9}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->match(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 166
    :cond_26
    const-string v6, "CAREERNEXTSEASON"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->seasons:Lcom/firsttouchgames/dls7/LocalSeasons;

    invoke-virtual {v2, v10}, Lcom/firsttouchgames/dls7/LocalSeasons;->nextSeason(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 167
    :cond_27
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-direct {v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->buy(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    invoke-virtual {v2, v10}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->purchase(Lorg/json/JSONObject;)V

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 168
    :cond_28
    const-string v5, "USEAGENTSCOUT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->recruit(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 169
    :cond_29
    const-string v5, "DISCARDSCOUT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v2, v10}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->discard(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 170
    :cond_2a
    const-string v5, "TRANSFERMARKETFREFRESH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-direct {v0, v10, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->refreshMarket(Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 171
    :cond_2b
    const-string v5, "STADIUMEDIT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-direct {v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->stadiumEdit25(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 172
    :cond_2c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct {v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->sell(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 173
    :cond_2d
    const-string v4, "RESTOREENERGY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-direct {v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineGame26;->restore(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 174
    :cond_2e
    const-string v3, "USEPHYSIO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->physios:Lcom/firsttouchgames/dls7/OfflinePhysios26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflinePhysios26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 175
    :cond_2f
    const-string v3, "FORMBOOST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->forms:Lcom/firsttouchgames/dls7/OfflineForm26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineForm26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 176
    :cond_30
    const-string v3, "SEASONPASS_ENDSEASON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v10}, Lcom/firsttouchgames/dls7/LocalPass25;->end(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 177
    :cond_31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflinePass26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 178
    :cond_32
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v7, v2, v5

    move-object v2, v10

    move-object/from16 v3, p2

    move-object v5, v11

    move-wide v6, v7

    invoke-static/range {v2 .. v7}, Lcom/firsttouchgames/dls7/LocalPass25;->collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 179
    :cond_33
    const-string v2, "SEASONPASS_PAYTHROUGHTIER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->config:Lorg/json/JSONObject;

    invoke-static {v10, v9, v2, v11}, Lcom/firsttouchgames/dls7/LocalPass25;->advance(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto/16 :goto_11

    .line 180
    :cond_34
    const-string v2, "SCENARIOENTERMATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->scenarios:Lcom/firsttouchgames/dls7/OfflineScenarios26;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    move-object v3, v10

    move-object/from16 v4, p2

    move-object v5, v11

    move-wide v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->enter(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v15, v23

    goto :goto_11

    .line 181
    :cond_35
    const-string v2, "SCENARIOENDMATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->scenarios:Lcom/firsttouchgames/dls7/OfflineScenarios26;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    iget-object v14, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->challenges:Lcom/firsttouchgames/dls7/OfflineChallenges26;

    move-object v3, v10

    move-object/from16 v4, p2

    move-object v5, v11

    move-wide v6, v7

    move-object/from16 v15, v23

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/firsttouchgames/dls7/OfflineScenarios26;->finish(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;JLcom/firsttouchgames/dls7/OfflineChallenges26;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_11

    .line 182
    :cond_36
    move-object/from16 v15, v23

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->coaches:Lcom/firsttouchgames/dls7/OfflineCoaches26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_11

    .line 183
    :cond_37
    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->coaches:Lcom/firsttouchgames/dls7/OfflineCoaches26;

    invoke-virtual {v2, v10, v9, v11}, Lcom/firsttouchgames/dls7/OfflineCoaches26;->purchaseSpecial(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_11

    :cond_38
    const-string v2, "LOCKTRANSFERMARKETPLAYER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_unimpl

    invoke-static {v10, v9}, Lcom/firsttouchgames/dls7/OfflineGame26;->lockTransferMarketPlayer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_11

    .line 184
    :cond_unimpl
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local operation not implemented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_39
    move-object/from16 v15, v23

    const/4 v13, 0x1

    .line 185
    :goto_11
    if-eqz v12, :cond_3a

    invoke-static {v10, v13}, Lcom/firsttouchgames/dls7/OfflineGame26;->careerArrays(Lorg/json/JSONObject;Z)V

    .line 186
    :cond_3a
    if-eqz v11, :cond_3b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v2, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_3b
    goto/16 :goto_14

    .line 188
    :cond_3c
    move-object v2, v8

    move-object/from16 v24, v12

    const/4 v13, 0x1

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "PID"

    if-eqz v3, :cond_3d

    const-string v3, "SecretPlayer"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "Cr"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7, v7}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->presentation(IIIZ)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    goto :goto_12

    .line 192
    :cond_3d
    move-object v3, v2

    :goto_12
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "Reward"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 193
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v4, "players"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "profile"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    const-string v4, "PGP"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3e

    const/4 v15, 0x0

    goto :goto_13

    :cond_3e
    const-string v2, "type"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_3f

    const/4 v15, 0x2

    goto :goto_13

    :cond_3f
    move v15, v13

    .line 195
    :goto_13
    const-string v2, "Count"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "Level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3, v15}, Lcom/firsttouchgames/dls7/OfflineGame26;->releasePresentation(IIII)Lorg/json/JSONObject;

    move-result-object v3

    .line 198
    :cond_40
    :goto_14
    invoke-static {v10}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->syncRosterRegistry(Lorg/json/JSONObject;)V

    invoke-static {v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->validate(Lorg/json/JSONObject;)V

    .line 199
    move-object/from16 v1, v24

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v10}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "Prf"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "Sys"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->object(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 201
    const-string v6, "SLI"

    invoke-virtual {v2, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-wide/32 v6, 0x15180

    add-long/2addr v6, v4

    const-string v8, "ERT"

    invoke-virtual {v2, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "ClMT"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    const-string v2, "Time"

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "Date"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "TR"

    const-string v5, "SUCCESS"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "PrD"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Extra"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "HGL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "LBL"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "FRD"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    const-string v2, "SyncedMod"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_41

    move v11, v4

    goto :goto_15

    :cond_41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    :goto_15
    const-string v2, "MdA"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    new-instance v2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    invoke-direct {v2, v10, v1}, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method

.method recoverScenario(Lorg/json/JSONObject;J)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCENARIOENDMATCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    const-string v3, "local_scenarios26"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "active"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    return-object v2

    .line 49
    :cond_2
    const-string v4, "entry_key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scenario_entry_key"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 52
    const-string v6, "capture_binding26"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "last"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "started"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    cmp-long p2, p2, v5

    if-lez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 53
    :goto_1
    if-nez v4, :cond_4

    if-nez p2, :cond_4

    return-object v2

    .line 54
    :cond_4
    const-string p2, "values"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->prepare(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    return-object p1
.end method

.method snapshot()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method testPlayer(I)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->catalog:Lorg/json/JSONObject;

    const-string v1, "players"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->contains(Lorg/json/JSONArray;I)Z

    move-result v1

    .line 66
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->recruitment:Lcom/firsttouchgames/dls7/OfflineRecruitment26;

    invoke-virtual {v2, v0, p1}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->grantTestPlayer(Lorg/json/JSONObject;I)V

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->syncRosterRegistry(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->validate(Lorg/json/JSONObject;)V

    .line 68
    new-instance v2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "player_id"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "already_owned"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->roster(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v3, "squad_size"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown test player"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


.method private static lockTransferMarketPlayer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMP"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMPI"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    const-string v5, "Lkd"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "RTi"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method testResources(JJ)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x77359400

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineGame26;->state:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Cur"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorized-test-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-coins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cr"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, p1, v4

    const-string v6, "authorized_test_resources"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-gems"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gm"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v3, p3, v3

    invoke-static {v0, v2, v3, v4, v6}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->validate(Lorg/json/JSONObject;)V

    .line 61
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "coins"

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "gems"

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid test balance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static lockTransferMarketPlayer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "PID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineGame26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMP"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "TrMPI"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x15180

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    const-string v5, "Lkd"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "RTi"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method
