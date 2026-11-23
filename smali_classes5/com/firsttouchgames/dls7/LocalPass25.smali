.class final Lcom/firsttouchgames/dls7/LocalPass25;
.super Ljava/lang/Object;
.source "LocalPass25.java"


# static fields
.field static final PERIOD:J = 0xd2f00L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static advance(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "SPa"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "local_pass25"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cycle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/firsttouchgames/dls7/LocalPass25;->definition(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CuT"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    if-ltz v2, :cond_5

    const-string v3, "NumTiers"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 52
    const-string v3, "BoU"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BoostedPayThroughTiersCost"

    goto :goto_0

    :cond_0
    const-string v3, "PayThroughTiersCost"

    :goto_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-gez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->negateExact(I)I

    move-result v3

    .line 53
    :cond_2
    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "Cr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "Gm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pass-tier25-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "season_pass_skip"

    invoke-static {p0, p1, v4, v3, p3}, Lcom/firsttouchgames/dls7/OfflineRecruitment26;->debit(Lorg/json/JSONObject;Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "SID"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "SeasonID"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "TierUnlocked"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "TiU"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "CrD"

    neg-int p2, v4

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "GmD"

    neg-int p2, v3

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pass tier price changed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_5
    new-instance p0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p1, "SEASONPASS_TIERNOTCOMPLETE"

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "SPa"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "local_pass25"

    invoke-virtual {p0, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    const-string p5, "Pr"

    invoke-static {p1, p5}, Lcom/firsttouchgames/dls7/LocalPass25;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p5

    const-string v0, "SPrP"

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalPass25;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p5, :cond_1

    const-string v0, "PrU"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p1, "SEASONPASS_NOTPREMIUMUSER"

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const-string v0, "PrP"

    goto :goto_1

    :cond_2
    const-string v0, "StP"

    :goto_1
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cycle"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p4, v3, v4}, Lcom/firsttouchgames/dls7/LocalPass25;->definition(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Prizes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Premium"

    if-eqz p5, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    const-string v5, "Standard"

    :goto_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-ltz v1, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    const-string v5, "CuT"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 45
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "SecondaryReward"

    if-eqz p1, :cond_4

    move-object v6, v5

    goto :goto_3

    :cond_4
    const-string v6, "Reward"

    :goto_3
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 46
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "SID"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "SeasonID"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Tier"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "CrD"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "GmD"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pass25-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "anchor"

    invoke-virtual {p4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p2, v3, p4, v4}, Lcom/firsttouchgames/dls7/LocalPass25;->grant(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 p0, v1, 0x1

    invoke-virtual {p3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p5, :cond_5

    const-string p0, "SPC"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    :cond_5
    return-object v4

    .line 45
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No secondary reward for selected pass tier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_7
    new-instance p0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p1, "SEASONPASS_TIERNOTCOMPLETE"

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static definition(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalPass25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Scheme"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TitleImage"

    const-string v3, "seasonpass_logo_droicer.png"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anchor"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0xd2f00

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    const-string v6, "SeasonID"

    invoke-static {p0, p1, p2}, Lcom/firsttouchgames/dls7/LocalPass25;->sid(Lorg/json/JSONObject;J)I

    move-result p0

    invoke-virtual {v0, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    const/16 p2, 0x3e8

    invoke-static {v1, v2, p2}, Lcom/firsttouchgames/dls7/LocalPass25$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v6

    invoke-direct {p1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StartDate"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const p1, 0x15180

    invoke-static {v1, v2, p1}, Lcom/firsttouchgames/dls7/LocalPass25$$ExternalSyntheticBackport1;->m(JI)I

    move-result p1

    const-string p2, "StartSeconds"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "FixedSeasonLength"

    invoke-virtual {p0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PreStartOffsetSeconds"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "EntryEndOffsetSeconds"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PostEndOffsetSeconds"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method static end(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "SPa"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "SID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "SeasonID"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "CrD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "GmD"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static flag(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid pass selection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static grant(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Coins"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "Gems"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v13, p1

    goto/16 :goto_7

    .line 60
    :cond_0
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    const/4 v7, 0x0

    move v9, v7

    :goto_1
    const/16 v10, 0xff

    if-ge v9, v8, :cond_2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    if-gt v11, v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reward count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    const-string v9, "DreamPointBoost"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "DPB"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move v9, v7

    :goto_2
    if-ge v9, v8, :cond_6

    move v10, v7

    :goto_3
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    if-ge v10, v11, :cond_5

    const-string v11, "DPM"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    if-gtz v12, :cond_3

    const-string v12, "Common"

    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "DreamPointsBoosts"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "Boosts"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "Matches"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "PBL"

    invoke-virtual {v11, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "PBR"

    invoke-virtual {v11, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    move-object/from16 v13, p1

    const-string v11, "ladder_boost_queue26"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v12, :cond_4

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v13, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v13, p1

    goto/16 :goto_0

    .line 62
    :cond_7
    move-object/from16 v13, p1

    const-string v9, "GKCoaches"

    const-string v11, "NGC"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v14

    const-string v9, "TechnicalCoaches"

    const-string v11, "NTC"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v15

    const-string v9, "FitnessCoaches"

    const-string v11, "NFC"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v9, "SpecialCoaches"

    const-string v11, "NCC"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v17

    const-string v9, "Scouts"

    const-string v11, "NSc"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v18

    const-string v9, "Agents"

    const-string v11, "NAg"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v19

    const-string v9, "Physios"

    const-string v11, "NPh"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v20

    const-string v9, "FormBoosts"

    const-string v11, "NFB"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v14 .. v21}, [[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move v12, v7

    :goto_5
    const/16 v14, 0x8

    if-ge v12, v14, :cond_9

    aget-object v14, v9, v12

    aget-object v15, v14, v7

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v11, 0x1

    aget-object v11, v14, v11

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    if-eqz v11, :cond_c

    .line 63
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "Stf"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    :goto_6
    if-ge v7, v8, :cond_b

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    add-int/2addr v9, v11

    if-gt v9, v10, :cond_a

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    new-instance v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string v1, "SEASONPASS_INVENTORYFULL"

    invoke-direct {v0, v1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_b
    goto/16 :goto_0

    .line 62
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pass reward:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pass inventory reward"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_e
    move-object/from16 v13, p1

    :goto_7
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_10

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "season_pass_reward"

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-coins"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-long v8, v7

    invoke-static {v0, v5, v8, v9, v6}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    const-string v5, "CrD"

    goto :goto_8

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-gems"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-long v8, v7

    invoke-static {v0, v5, v8, v9, v6}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    const-string v5, "GmD"

    :goto_8
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative pass reward"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_11
    return-void
.end method

.method private static p(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static refresh(Lorg/json/JSONObject;Lorg/json/JSONObject;J)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalPass25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "SPa"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Common"

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SeasonPass"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "local_pass25"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 16
    const-string v9, "history"

    const-string v10, "Seasons"

    const-string v11, "SID"

    const-string v12, "anchor"

    const-string v13, "max_seen"

    const-string v15, "cycle"

    if-nez v8, :cond_8

    .line 17
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 18
    const/16 v17, 0x0

    move-object/from16 v18, v6

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v19, v10

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    move-object/from16 v20, v3

    const-string v3, "SeasonID"

    if-ge v6, v10, :cond_1

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v14, :cond_0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v17, v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v19

    move-object/from16 v3, v20

    goto :goto_0

    .line 19
    :cond_1
    if-nez v17, :cond_3

    const-wide/high16 v21, -0x8000000000000000L

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_3

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/firsttouchgames/dls7/LocalPass25;->start(Lorg/json/JSONObject;)J

    move-result-wide v23

    cmp-long v14, v23, v1

    if-gtz v14, :cond_2

    cmp-long v14, v23, v21

    if-lez v14, :cond_2

    move-object/from16 v17, v10

    move-wide/from16 v21, v23

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 20
    :cond_3
    if-nez v17, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    :cond_4
    move-object/from16 v6, v17

    if-eqz v6, :cond_7

    .line 21
    const-string v8, "NumTiers"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x15

    if-ne v8, v10, :cond_6

    const-string v8, "Prizes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v10, "Standard"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/16 v14, 0x15

    if-ne v10, v14, :cond_6

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "Premium"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v14, :cond_6

    .line 22
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    const v8, 0xffff

    if-gt v3, v8, :cond_5

    .line 23
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "version"

    const/4 v14, 0x1

    invoke-virtual {v8, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "initial_sid"

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "template"

    invoke-static {v6}, Lcom/firsttouchgames/dls7/LocalPass25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v6, v14

    goto :goto_2

    .line 22
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Native pass ID overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected21 original pass levels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing pass template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    const/4 v14, 0x1

    const/4 v6, 0x0

    .line 25
    :goto_2
    move-object v0, v15

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v14, v1, v14

    move/from16 p0, v6

    const-wide/32 v6, 0xd2f00

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v14

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-gez v3, :cond_9

    move-wide v14, v6

    :cond_9
    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    cmp-long v1, v14, v6

    const-wide/16 v2, 0x1

    if-lez v1, :cond_b

    .line 27
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalPass25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v6, v2

    const-wide/32 v21, 0xd2f00

    mul-long v6, v6, v21

    add-long/2addr v12, v6

    const-string v6, "ended"

    invoke-virtual {v5, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    :goto_3
    const/16 v5, 0x15

    if-ge v6, v5, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29
    :cond_a
    const/4 v7, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v8, v14, v15}, Lcom/firsttouchgames/dls7/LocalPass25;->sid(Lorg/json/JSONObject;J)I

    move-result v6

    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Unl"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PrU"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "BoU"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "CuT"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "PoT"

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "SXP"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "StP"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "PrP"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "SPC"

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "PBC"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "PTW"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "BDU"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "TSO"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "PES"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "PER"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "PrC"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "PrL"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v5, v20

    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v16, 0x1

    goto :goto_4

    .line 26
    :cond_b
    move/from16 v16, p0

    .line 33
    :goto_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v8, v14, v15}, Lcom/firsttouchgames/dls7/LocalPass25;->definition(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    add-long/2addr v14, v2

    invoke-static {v8, v14, v15}, Lcom/firsttouchgames/dls7/LocalPass25;->definition(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v16

    .line 15
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pass clock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sid(Lorg/json/JSONObject;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "initial_sid"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    rem-long/2addr p1, v0

    long-to-int p0, p1

    add-int/lit16 p0, p0, 0x7530

    :goto_0
    return p0
.end method

.method private static start(Lorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
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

    const-string v1, "StartDate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "StartSeconds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
