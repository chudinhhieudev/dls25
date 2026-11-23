.class final Lcom/firsttouchgames/dls7/OfflineChallenges26;
.super Ljava/lang/Object;
.source "OfflineChallenges26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;
    }
.end annotation


# static fields
.field private static final GROUPS:[Ljava/lang/String;

.field static final NAMES:[Ljava/lang/String;

.field private static final TRACKS:[Ljava/lang/String;


# instance fields
.field private final catalog:Lorg/json/JSONObject;

.field private final config:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 8
    const-string v37, "COMPLETE_ALL"

    const-string v38, "DP_EARN"

    const-string v0, "LOGIN"

    const-string v1, "CAREER_PLAYMATCH"

    const-string v2, "CAREER_PLAYMATCH_2"

    const-string v3, "CAREER_WIN_COUNT"

    const-string v4, "CAREER_SCORE"

    const-string v5, "CAREER_CLEANSHEET"

    const-string v6, "CAREER_WIN_MARGIN"

    const-string v7, "DLL_PLAYMATCH"

    const-string v8, "DLL_WIN_COUNT"

    const-string v9, "DLL_SCORE"

    const-string v10, "DLL_CLEANSHEET"

    const-string v11, "DLL_WIN_MARGIN"

    const-string v12, "WINS_FORMATION"

    const-string v13, "WINS_PLAYER"

    const-string v14, "GOALS_DEF"

    const-string v15, "GOALS_MID"

    const-string v16, "GOALS_ATT"

    const-string v17, "GOALS_PLAYER"

    const-string v18, "GOALS_PENALTY"

    const-string v19, "GOALS_FREEKICK"

    const-string v20, "GOALS_OUTSIDEBOX"

    const-string v21, "GOALS_HEADER"

    const-string v22, "GOALS_VOLLEY"

    const-string v23, "CLEANSHEETS_PLAYER"

    const-string v24, "AGENT_USE"

    const-string v25, "SCOUT_USE"

    const-string v26, "FITCOACH_USE"

    const-string v27, "TECHCOACH_USE"

    const-string v28, "GKCOACH_USE"

    const-string v29, "FORMBOOST_USE"

    const-string v30, "PHYSIO_USE"

    const-string v31, "PLAYER_BUY"

    const-string v32, "BOOST_INGAME"

    const-string v33, "FACILITY_UPGRADE"

    const-string v34, "VIDEO_WATCH"

    const-string v35, "SCENARIOS_COMPLETE"

    const-string v36, "SP_EARN"

    filled-new-array/range {v0 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->NAMES:[Ljava/lang/String;

    .line 9
    const-string v0, "WCS"

    const-string v1, "WCP"

    const-string v2, "DaO"

    const-string v3, "DCP"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    const-string v0, "WeeklyStandard"

    const-string v1, "WeeklyPremium"

    const-string v2, "DailyStandard"

    const-string v3, "DailyPremium"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->GROUPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->catalog:Lorg/json/JSONObject;

    return-void
.end method

.method private static completeAll(Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const-string v3, "Com"

    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v2, v4, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    const-string v6, "Pro"

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    if-ne v2, v4, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    const-string v6, "Sta"

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    if-ne v2, v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private static flag(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid challenge track"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private grant(Lorg/json/JSONObject;Ljava/lang/String;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    if-nez p5, :cond_0

    return-void

    :cond_0
    if-ltz p5, :cond_7

    .line 89
    const-string v0, "challenge_reward"

    if-nez p3, :cond_1

    int-to-long p3, p5

    invoke-static {p1, p2, p3, p4, v0}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    int-to-long p3, p5

    invoke-static {p1, p2, p3, p4, v0}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    goto :goto_1

    .line 90
    :cond_2
    const/4 p2, 0x2

    if-lt p3, p2, :cond_4

    const/16 v0, 0x9

    if-gt p3, v0, :cond_4

    const-string v7, "NFB"

    const-string v8, "NCC"

    const-string v1, "NGC"

    const-string v2, "NTC"

    const-string v3, "NFC"

    const-string v4, "NAg"

    const-string v5, "NSc"

    const-string v6, "NPh"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Stf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sub-int/2addr p3, p2

    aget-object p2, v0, p3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-ltz p4, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p4, p2, :cond_3

    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid reward level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_4
    const/16 p2, 0xb

    if-eq p3, p2, :cond_6

    const/16 p2, 0xd

    if-ne p3, p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Reward not implemented: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p3, p5}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    .line 92
    :goto_1
    return-void

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid reward"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static has(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static pick(Ljava/util/Random;II)I
    .locals 1

    .line 16
    const/4 v0, 0x0

    sub-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
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

.method private static progress(Lorg/json/JSONObject;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "Pro"

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p1, p2

    :goto_0
    const-string p2, "Dat"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "Sta"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "Com"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private static rewardSupported(I)Z
    .locals 1

    .line 17
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static supported(I)Z
    .locals 1

    .line 18
    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe

    if-lt p0, v0, :cond_1

    const/16 v0, 0x11

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x17

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x23

    if-eq p0, v0, :cond_3

    const/16 v0, 0x24

    if-eq p0, v0, :cond_3

    const/16 v0, 0x25

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static zeros()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "[0,0,0,0,0]"

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method collect(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    move-object/from16 v0, p2

    const-string v1, "Ind"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v2, 0x4

    if-gt v1, v2, :cond_d

    const-string v2, "Dai"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->flag(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "Pre"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->flag(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    sget-object v7, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    add-int/2addr v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Obj"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 80
    if-eqz v4, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "SPa"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "PrU"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string v1, "SEASONPASS_NOTPREMIUMUSER"

    invoke-direct {v0, v1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    :goto_1
    const-string v12, "RT2"

    const-string v13, "RL2"

    const-string v8, "Rew"

    const-string v9, "RTy"

    const-string v10, "RLe"

    const-string v11, "Re2"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v8

    move v9, v5

    :goto_2
    const/4 v10, 0x6

    if-ge v9, v10, :cond_5

    aget-object v10, v8, v9

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v11, v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge quote changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 82
    :cond_5
    const-string v0, "Col"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v3

    const-string v9, "Re2"

    const-string v10, "RL2"

    const-string v11, "RT2"

    const-string v12, "Rew"

    const-string v13, "RLe"

    const-string v14, "RTy"

    if-eqz v8, :cond_7

    const-string v15, "Com"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "challenge-"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "StT"

    move/from16 v16, v4

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v21}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->grant(Lorg/json/JSONObject;Ljava/lang/String;III)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-second"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-direct/range {v16 .. v21}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->grant(Lorg/json/JSONObject;Ljava/lang/String;III)V

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string v1, "DAILYOBJ_INCOMPLETE"

    invoke-direct {v0, v1}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v5, v4

    .line 83
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_8

    const-string v1, "Daily"

    goto :goto_5

    :cond_8
    const-string v1, "Weekly"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Challenges"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_9

    const-string v1, "Premium"

    goto :goto_6

    :cond_9
    const-string v1, "Standard"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v8, :cond_a

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Reward"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardType"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardLevel"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v8, :cond_b

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    const-string v3, "Reward2"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v8, :cond_c

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    const-string v2, "RewardType2"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardLevel2"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "SetDailyObj"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 79
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid challenge slot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method initialize(Lorg/json/JSONObject;J)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    const-string v2, "Common"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Challenges"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "UTCOffset"

    const-wide/32 v3, 0xa8c0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v4, p2, v2

    const v6, 0x15180

    invoke-static {v4, v5, v6}, Lcom/firsttouchgames/dls7/OfflineChallenges26$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v7

    const-wide/32 v9, 0x15180

    mul-long/2addr v7, v9

    add-long/2addr v7, v2

    .line 21
    const-wide/32 v11, 0x54600

    sub-long/2addr v4, v11

    const-wide/32 v13, 0x93a80

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    const-wide/16 v13, 0x7

    mul-long/2addr v4, v13

    mul-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v4, v11

    .line 22
    const/4 v3, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ge v3, v9, :cond_1e

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    sget-object v11, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "StT"

    const-string v12, "EnT"

    if-eqz v10, :cond_0

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v14, v14, p2

    if-lez v14, :cond_0

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v14, v14, p2

    if-gtz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    const-string v15, "Obj"

    const/16 v16, 0x0

    if-nez v10, :cond_1

    move-object/from16 v10, v16

    goto :goto_2

    :cond_1
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    :goto_2
    const/4 v6, 0x5

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    and-int/2addr v2, v14

    .line 24
    const-string v14, "Ind"

    const-string v13, "Ena"

    if-eqz v2, :cond_6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_6

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    if-ne v9, v6, :cond_3

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-wide/from16 v18, v4

    const/16 v4, 0x25

    if-ne v6, v4, :cond_5

    goto :goto_5

    :cond_3
    move-wide/from16 v18, v4

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_4
    move-wide/from16 v18, v4

    :cond_5
    const/4 v4, 0x0

    :goto_6
    and-int/2addr v2, v4

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v18

    const/4 v6, 0x5

    goto :goto_4

    :cond_6
    move-wide/from16 v18, v4

    .line 25
    if-eqz v2, :cond_7

    move-object/from16 v27, v1

    move v5, v3

    move-wide/from16 v20, v7

    const/4 v6, 0x0

    goto/16 :goto_14

    .line 26
    :cond_7
    const/4 v2, 0x2

    if-ge v3, v2, :cond_8

    move-wide v4, v7

    goto :goto_7

    :cond_8
    move-wide/from16 v4, v18

    :goto_7
    new-instance v6, Ljava/util/Random;

    int-to-long v9, v3

    const/16 v17, 0x20

    shl-long v9, v9, v17

    xor-long/2addr v9, v4

    invoke-direct {v6, v9, v10}, Ljava/util/Random;-><init>(J)V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 27
    const/4 v2, 0x0

    :goto_8
    move-wide/from16 v20, v7

    const/4 v7, 0x5

    if-ge v2, v7, :cond_1c

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_9
    move-object/from16 v22, v15

    sget-object v15, Lcom/firsttouchgames/dls7/OfflineChallenges26;->NAMES:[Ljava/lang/String;

    array-length v15, v15

    move-object/from16 v23, v12

    const-string v12, "RewardType2"

    move-wide/from16 v24, v4

    const-string v4, "RewardType"

    const-string v5, "TargetRewards"

    if-ge v7, v15, :cond_10

    .line 29
    invoke-static {v7}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->supported(I)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v26, v11

    goto :goto_d

    :cond_9
    sget-object v15, Lcom/firsttouchgames/dls7/OfflineChallenges26;->NAMES:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_a

    move-object/from16 v5, v16

    goto :goto_a

    :cond_a
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_a
    if-nez v5, :cond_b

    move-object/from16 v5, v16

    goto :goto_b

    :cond_b
    sget-object v15, Lcom/firsttouchgames/dls7/OfflineChallenges26;->GROUPS:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_b
    if-nez v5, :cond_c

    move-object/from16 v15, v16

    goto :goto_c

    :cond_c
    const-string v15, "Slots"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 30
    :goto_c
    if-eqz v5, :cond_d

    move-object/from16 v26, v11

    const-string v11, "Enabled"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    if-eqz v15, :cond_f

    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    if-lez v11, :cond_f

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->rewardSupported(I)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->rewardSupported(I)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_d
    move-object/from16 v26, v11

    goto :goto_d

    .line 29
    :cond_e
    move-object/from16 v26, v11

    .line 28
    :cond_f
    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v22

    move-object/from16 v12, v23

    move-wide/from16 v4, v24

    move-object/from16 v11, v26

    goto/16 :goto_9

    .line 32
    :cond_10
    move-object/from16 v26, v11

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 33
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineChallenges26;->NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineChallenges26;->GROUPS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "CountMin"

    const/4 v11, 0x1

    invoke-virtual {v5, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v11, "CountMax"

    invoke-virtual {v5, v11, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v6, v8, v11}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->pick(Ljava/util/Random;II)I

    move-result v15

    .line 34
    move-object/from16 v27, v1

    const-string v1, "Rewards"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_11

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move/from16 v30, v2

    move/from16 v29, v3

    move-object/from16 v31, v9

    move-object/from16 v28, v10

    const/4 v11, 0x1

    goto :goto_f

    .line 36
    :cond_11
    const-string v1, "Reward"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v2

    move/from16 v29, v3

    move-object/from16 v31, v9

    move-object/from16 v28, v10

    move v11, v15

    goto :goto_f

    .line 37
    :cond_12
    const-string v1, "RewardMin"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v28, v10

    const-string v10, "RewardMax"

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v11, v8, :cond_13

    move/from16 v30, v2

    move/from16 v29, v3

    move-object/from16 v31, v9

    goto :goto_e

    :cond_13
    sub-int/2addr v10, v1

    move/from16 v30, v2

    move/from16 v29, v3

    int-to-double v2, v10

    sub-int v10, v15, v8

    move-object/from16 v31, v9

    int-to-double v9, v10

    mul-double/2addr v2, v9

    sub-int/2addr v11, v8

    int-to-double v8, v11

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    :goto_e
    move v11, v15

    .line 38
    :goto_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Dat"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Da2"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Da3"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "Sta"

    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "Pro"

    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "Rew"

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RTy"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardLevel"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "RLe"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardMin2"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v8, "Re2"

    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RT2"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RewardLevel2"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "RL2"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Col"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Com"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    const/16 v2, 0xd

    const/16 v4, 0x17

    if-eq v7, v2, :cond_14

    const/16 v2, 0x11

    if-eq v7, v2, :cond_14

    if-ne v7, v4, :cond_18

    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "DrT"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "Man"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "LU"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_10
    const/16 v9, 0xb

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_17

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    iget-object v10, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->catalog:Lorg/json/JSONObject;

    const-string v11, "players"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "position_group"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v7, v4, :cond_15

    if-nez v10, :cond_16

    goto :goto_11

    :cond_15
    if-eqz v10, :cond_16

    :goto_11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_17
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_18
    if-nez v7, :cond_19

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->progress(Lorg/json/JSONObject;IZ)V

    goto :goto_12

    :cond_19
    const/4 v2, 0x1

    .line 41
    :goto_12
    move-object/from16 v3, v31

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    add-int/lit8 v1, v30, 0x1

    move v2, v1

    move-object v9, v3

    move-wide/from16 v7, v20

    move-object/from16 v15, v22

    move-object/from16 v12, v23

    move-wide/from16 v4, v24

    move-object/from16 v11, v26

    move-object/from16 v1, v27

    move-object/from16 v10, v28

    move/from16 v3, v29

    goto/16 :goto_8

    .line 39
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing challenge player"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1b
    move/from16 v30, v2

    move/from16 v29, v3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No supported original challenge for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/firsttouchgames/dls7/OfflineChallenges26;->GROUPS:[Ljava/lang/String;

    aget-object v3, v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1c
    move-object/from16 v27, v1

    move/from16 v29, v3

    move-wide/from16 v24, v4

    move-object v3, v9

    move-object/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v22, v15

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    aget-object v2, v2, v29

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-wide/from16 v7, v24

    move-object/from16 v5, v26

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4

    move/from16 v5, v29

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1d

    const v6, 0x15180

    goto :goto_13

    :cond_1d
    const v6, 0x93a80

    :goto_13
    int-to-long v9, v6

    add-long v6, v7, v9

    move-object/from16 v8, v23

    invoke-virtual {v4, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v6, v22

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "NRe"

    invoke-static {}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->zeros()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "NRf"

    invoke-static {}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->zeros()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Str"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :goto_14
    add-int/lit8 v3, v5, 0x1

    move-wide/from16 v4, v18

    move-wide/from16 v7, v20

    move-object/from16 v1, v27

    const v6, 0x15180

    goto/16 :goto_0

    .line 45
    :cond_1e
    return-void
.end method

.method match(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Fft"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_13

    .line 50
    :cond_0
    const-string v3, "HID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x102

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "HSc"

    const-string v7, "ASc"

    if-eqz v3, :cond_2

    move-object v8, v4

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v3, :cond_3

    move-object v4, v7

    :cond_3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    const-string v7, "Common"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "SeasonPass"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "PrizeLadder"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 51
    if-le v8, v3, :cond_4

    const-string v9, "WinPoints"

    goto :goto_2

    :cond_4
    if-ne v8, v3, :cond_5

    const-string v9, "DrawPoints"

    goto :goto_2

    :cond_5
    const-string v9, "LosePoints"

    :goto_2
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Career"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "GoalPoints"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    mul-int/2addr v13, v8

    add-int/2addr v10, v13

    const-string v13, "CleanSheetPoints"

    if-nez v3, :cond_6

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    add-int/2addr v10, v14

    .line 52
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    mul-int/2addr v12, v8

    add-int/2addr v9, v12

    if-nez v3, :cond_7

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v9, v4

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v11, "SPa"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v11, "BoU"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Boosted"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "BonusSPPercent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    mul-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x64

    const-string v7, "BonusDPPercent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    mul-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x64

    goto :goto_5

    :cond_8
    move v4, v9

    .line 54
    :goto_5
    iget-object v7, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    invoke-static {v1, v7, v9, v4}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->boostPoints(Lorg/json/JSONObject;Lorg/json/JSONObject;II)I

    move-result v4

    const/16 v7, 0xb

    invoke-virtual {v0, v1, v7, v10}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7, v4}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    .line 55
    const-string v4, "Goals"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v9, "Apps"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 56
    sget-object v9, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    array-length v11, v9

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_1b

    aget-object v13, v9, v12

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "Obj"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x4

    if-ge v14, v15, :cond_1a

    .line 57
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v5, "Ind"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 58
    if-eq v5, v6, :cond_18

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    move-object/from16 v17, v2

    goto/16 :goto_10

    :cond_9
    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    if-le v8, v3, :cond_a

    :goto_8
    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    :goto_9
    move-object/from16 v17, v2

    goto/16 :goto_11

    :cond_b
    if-ne v5, v15, :cond_c

    move-object/from16 v17, v2

    move v5, v8

    :goto_a
    const/4 v6, 0x1

    goto/16 :goto_12

    :cond_c
    const/4 v6, 0x5

    if-ne v5, v6, :cond_d

    if-nez v3, :cond_a

    goto :goto_8

    :cond_d
    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    sub-int v5, v8, v3

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v17, v2

    goto :goto_a

    .line 59
    :cond_e
    const-string v6, "Da3"

    const/16 v15, 0xd

    if-ne v5, v15, :cond_10

    if-le v8, v3, :cond_f

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->has(Lorg/json/JSONArray;I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    :goto_b
    move-object/from16 v17, v2

    const/4 v6, 0x0

    goto/16 :goto_12

    .line 60
    :cond_10
    const/16 v15, 0x17

    if-ne v5, v15, :cond_12

    if-nez v3, :cond_11

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->has(Lorg/json/JSONArray;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    :goto_c
    move-object/from16 v17, v2

    const/4 v6, 0x0

    goto/16 :goto_12

    .line 61
    :cond_12
    const/16 v15, 0xe

    if-lt v5, v15, :cond_16

    const/16 v15, 0x11

    if-gt v5, v15, :cond_16

    if-eqz v4, :cond_16

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v15, v1, :cond_15

    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->catalog:Lorg/json/JSONObject;

    const-string v0, "players"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x11

    if-ne v5, v2, :cond_13

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_14

    goto :goto_e

    :cond_13
    if-eqz v0, :cond_14

    const-string v1, "position_group"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v5, -0xd

    if-ne v0, v1, :cond_14

    :goto_e
    add-int/lit8 v16, v16, 0x1

    :cond_14
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_d

    :cond_15
    move-object/from16 v17, v2

    move/from16 v5, v16

    const/4 v6, 0x0

    goto :goto_12

    :cond_16
    move-object/from16 v17, v2

    .line 62
    const/16 v0, 0x24

    if-ne v5, v0, :cond_17

    move v5, v10

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x0

    goto :goto_12

    .line 58
    :cond_18
    move-object/from16 v17, v2

    :goto_10
    const/4 v5, 0x1

    :goto_11
    const/4 v6, 0x0

    .line 63
    :goto_12
    if-lez v5, :cond_19

    invoke-static {v7, v5, v6}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->progress(Lorg/json/JSONObject;IZ)V

    .line 56
    :cond_19
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    const/4 v6, 0x1

    const/16 v7, 0xd

    goto/16 :goto_7

    .line 64
    :cond_1a
    move-object/from16 v17, v2

    invoke-static {v13}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->completeAll(Lorg/json/JSONArray;)V

    .line 56
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x1

    const/16 v7, 0xd

    goto/16 :goto_6

    .line 65
    :cond_1b
    return v10

    .line 49
    :cond_1c
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method points(Lorg/json/JSONObject;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    if-nez p3, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    const-string v1, "Common"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    const/16 v1, 0xb

    const-string v2, "PointsPerTier"

    const-string v3, "CuT"

    const-string v4, "PoT"

    const/4 v5, 0x0

    if-ne p2, v1, :cond_5

    const-string p2, "SPa"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "SeasonPass"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "Seasons"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v5

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SeasonID"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "SID"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "NumTiers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    div-int v1, p3, p2

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    rem-int v5, p3, p2

    :goto_1
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing original season"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_5
    const-string p2, "PrL"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "Unl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    const-string p2, "PrizeLadder"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "Ladders"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    move v0, v5

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "LadderID"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "LID"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    :goto_3
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-virtual {p3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    if-lt p2, v0, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :cond_9
    :goto_4
    return-void
.end method

.method purchase(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Obj"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v2

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Ind"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7, v2}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->progress(Lorg/json/JSONObject;IZ)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->completeAll(Lorg/json/JSONArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method scenario(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    return v0

    :cond_0
    const-string p5, "Hom"

    invoke-static {p2, p5, v0}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->flag(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p5

    const-string v1, "HSc"

    const-string v2, "ASc"

    if-eqz p5, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz p5, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p5, :cond_3

    const-string p5, "ScHS"

    goto :goto_1

    :cond_3
    const-string p5, "ScAS"

    :goto_1
    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    sub-int p3, v3, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 70
    iget-object p5, p0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    const-string v1, "Common"

    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    const-string v1, "SeasonPass"

    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrizeLadder"

    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-le v3, p2, :cond_4

    const-string v2, "WinPoints"

    goto :goto_2

    :cond_4
    if-ne v3, p2, :cond_5

    const-string v2, "DrawPoints"

    goto :goto_2

    :cond_5
    const-string v2, "LosePoints"

    .line 71
    :goto_2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Scenario"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "GoalPoints"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v6, p3

    add-int/2addr v3, v6

    const-string v6, "CleanSheetPoints"

    if-nez p2, :cond_6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    :cond_6
    move v7, v0

    :goto_3
    add-int/2addr v3, v7

    .line 72
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p5, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr p3, v5

    add-int/2addr v2, p3

    if-nez p2, :cond_7

    invoke-virtual {p5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_4

    :cond_7
    move p2, v0

    :goto_4
    add-int/2addr v2, p2

    .line 73
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "SPa"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "BoU"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "Boosted"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "BonusSPPercent"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x64

    mul-int/2addr v3, p3

    div-int/lit8 v3, v3, 0x64

    const-string p3, "BonusDPPercent"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x64

    mul-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x64

    goto :goto_5

    :cond_8
    move p2, v2

    .line 74
    :goto_5
    iget-object p3, p0, Lcom/firsttouchgames/dls7/OfflineChallenges26;->config:Lorg/json/JSONObject;

    invoke-static {p1, p3, v2, p2}, Lcom/firsttouchgames/dls7/OfflinePrizeLadder26;->boostPoints(Lorg/json/JSONObject;Lorg/json/JSONObject;II)I

    move-result p2

    const/16 p3, 0xb

    invoke-virtual {p0, p1, p3, v3}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    const/16 p3, 0xd

    invoke-virtual {p0, p1, p3, p2}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    .line 75
    sget-object p2, Lcom/firsttouchgames/dls7/OfflineChallenges26;->TRACKS:[Ljava/lang/String;

    array-length p3, p2

    move p5, v0

    :goto_6
    if-ge p5, p3, :cond_c

    aget-object v1, p2, p5

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Obj"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v0

    :goto_7
    const/4 v4, 0x4

    if-ge v2, v4, :cond_b

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Ind"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    if-eqz p4, :cond_9

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->progress(Lorg/json/JSONObject;IZ)V

    goto :goto_8

    :cond_9
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_a

    invoke-static {v4, v3, v0}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->progress(Lorg/json/JSONObject;IZ)V

    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->completeAll(Lorg/json/JSONArray;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    .line 76
    :cond_c
    return v3
.end method
