.class final Lcom/firsttouchgames/dls7/LocalSeasons;
.super Ljava/lang/Object;
.source "LocalSeasons.java"


# static fields
.field private static final MASK:[I

.field private static final REMOVED_POSTSEASON:I = 0x300

.field private static final USER:I = 0x102


# instance fields
.field private final policy:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x10
        0x1
        0x4
        0x1
        0x4
        0x1
        0x10
        0x1
        0x8
        0x1
        0x8
        0x1
        0x10
        0x1
        0x8
        0x1
        0x8
        0x1
        0x10
        0x1
        0x8
        0x1
        0x8
        0x10
        0x2
        0x2
        0x400
        0x20
        0x20
        0x20
        0x40
        0x40
        0x40
        0x40
        0x80
        0x80
        0x80
        0x100
        0x200
    .end array-data
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "career_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    return-void
.end method

.method private activatePostseason(Lorg/json/JSONObject;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "division"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v12, "winner"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v13, 0x102

    if-ne v1, v13, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v14, v0

    .line 167
    const/16 v0, 0x1f

    if-ne v10, v0, :cond_1

    if-eqz v14, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x14

    const/16 v4, 0x400

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 168
    :cond_1
    const/16 v0, 0x20

    if-ne v10, v0, :cond_2

    if-nez v11, :cond_2

    if-eqz v14, :cond_2

    iget-object v0, v8, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    const-string v1, "national_teams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v4, 0x12d

    const/4 v5, 0x1

    const/16 v3, 0x20

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x3

    const/16 v3, 0xf

    const/16 v4, 0x20

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 169
    :cond_2
    const/16 v0, 0x27

    if-ne v10, v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v9, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "bit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    invoke-static {v9, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v13, :cond_3

    iget-object v0, v8, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    const-string v1, "allstar_teams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v4, 0x191

    const/4 v5, 0x1

    const/16 v3, 0x8

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x3

    const/16 v3, 0x11

    const/16 v4, 0x80

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 170
    :cond_3
    return-void
.end method

.method private afterLeague(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x102

    invoke-static {v2, v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->position(Lorg/json/JSONObject;I)I

    move-result v3

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "division"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Sum"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "MLP"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "done"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "finish"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Tab"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Sta"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "TID"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v11, "winner"

    invoke-virtual {v5, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v11, "MsC"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v5, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    mul-int/lit8 v5, v4, 0x50

    rsub-int v5, v5, 0x3e8

    add-int/lit8 v5, v5, -0x64

    rsub-int/lit8 v7, v3, 0xf

    mul-int/2addr v5, v7

    div-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "season-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v11, "Sea"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-league-position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    int-to-long v11, v5

    const-string v5, "career_league_position"

    invoke-static {p1, v7, v11, v12, v5}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    invoke-direct {p0, p1, v4, v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->award(Lorg/json/JSONObject;II)V

    .line 151
    :cond_0
    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    const-string v5, "direct_promotions"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v4, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    const-string v7, "playoff_teams"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 152
    :cond_2
    return-void
.end method

.method private static array(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private award(Lorg/json/JSONObject;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    if-ltz p3, :cond_5

    const/4 v0, 0x2

    if-le p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "season-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Sea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-trophy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "awards"

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ATS"

    invoke-static {v2, v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "TMd"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x15

    const-string v5, "Med"

    if-ge v3, v4, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->zeros(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 136
    const/16 v2, 0x9

    if-lt p2, v2, :cond_4

    const/16 p2, 0xfa

    const/16 v2, 0x64

    const/16 v3, 0x1f4

    filled-new-array {v3, p2, v2}, [I

    move-result-object p2

    aget p2, p2, p3

    int-to-long v2, p2

    const-string p2, "career_trophy"

    invoke-static {p1, v0, v2, v3, p2}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    :cond_4
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    return-void

    .line 132
    :cond_5
    :goto_1
    return-void
.end method

.method private static calendarResults(Lorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    const-string v0, "Mai"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Res"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 33
    const-string v4, "MsC"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 34
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x2c

    const-string v9, "TID"

    if-ge v7, v8, :cond_4

    if-nez v2, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    :goto_1
    const-string v10, "Pla"

    if-eqz v8, :cond_1

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    move v11, v6

    :goto_2
    if-eqz v11, :cond_2

    invoke-static {v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->maskAt(I)I

    move-result v12

    or-int/2addr v5, v12

    :cond_2
    if-eqz v11, :cond_3

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_3

    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "Tea"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "Sco"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "Pen"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    :goto_3
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_4
    const-string v2, "Msk"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "TIn"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v8, "Tou"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 40
    nop

    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_7

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v10, 0xa

    if-ne v8, v10, :cond_5

    and-int/lit8 v7, v7, -0x5

    :cond_5
    const/16 v10, 0x10

    if-ne v8, v10, :cond_6

    and-int/lit8 v7, v7, -0x21

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 41
    :cond_7
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    return-void
.end method

.method private static car(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Car"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 p2, 0x102

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p5, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/firsttouchgames/dls7/LocalSeasons;->random(Lorg/json/JSONObject;I)Ljava/util/Random;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p3, :cond_2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, p3, :cond_4

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p4}, Lcom/firsttouchgames/dls7/LocalSeasons;->random(Lorg/json/JSONObject;I)Ljava/util/Random;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->array(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insufficient competition teams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static contains(Lorg/json/JSONArray;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
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

    .line 15
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

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static drawRound(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    const-string v0, "Lea"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CRo"

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Tea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "Fix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, "Rou"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 65
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "Tab"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "NG"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v2, p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static empty()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Lea"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Rou"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "NRo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "Fix"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "NT"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "NG"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "Sta"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "Tab"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "CRo"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "PRo"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "Tea"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "GoF"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SIn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "PSt"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static fillRound(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    const-string v0, "SIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Tea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "Tab"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "NG"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CRo"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    return-void
.end method

.method private finishSeason(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Sum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Ovr"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Mat"

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Tur"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v0, "season_history"

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Sea"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "division"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "competitions"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    return-void
.end method

.method private finishStage(Lorg/json/JSONObject;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-static {p1, p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "winner"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bit"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "Sum"

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "PoW"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const/4 v2, -0x1

    const-string v4, "finish"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x102

    if-gez v2, :cond_2

    if-ne p3, v6, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    :goto_0
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->summaryKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MsC"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne p3, v6, :cond_3

    const-string p3, "TID"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->award(Lorg/json/JSONObject;II)V

    :cond_3
    return-void
.end method

.method private static firstSlot(I)I
    .locals 2

    .line 25
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown competition mask"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static flags(I)Lorg/json/JSONArray;
    .locals 2

    .line 30
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private flattened(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "tree"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static indexForMask(I)I
    .locals 2

    .line 23
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :cond_3
    :goto_0
    return v0
.end method

.method private initializeCups(Lorg/json/JSONObject;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->calendarResults(Lorg/json/JSONObject;)V

    .line 81
    invoke-direct/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->flattened(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "LTr"

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v8, 0x65

    const/4 v9, 0x1

    const/16 v7, 0x80

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/firsttouchgames/dls7/LocalSeasons;->choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/4 v12, 0x1

    const/16 v13, 0x9

    const/4 v14, 0x4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "division"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0xb

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tree"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    mul-int/lit8 v0, v0, 0x2

    move v3, v0

    :goto_0
    add-int/lit8 v5, v0, 0x2

    const/4 v9, 0x0

    if-ge v3, v5, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    :goto_1
    const/16 v6, 0x10

    if-ge v9, v6, :cond_0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v14, 0xc9

    const/4 v15, 0x1

    const/16 v13, 0x20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/firsttouchgames/dls7/LocalSeasons;->choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v3, 0x2

    const/16 v5, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/firsttouchgames/dls7/LocalSeasons;->empty()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "bit"

    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "done"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "winner"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "finish"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Sum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v16, "FCF"

    const-string v17, "UCF"

    const-string v10, "AMF"

    const-string v11, "PoF"

    const-string v12, "GCF"

    const-string v13, "DCF"

    const-string v14, "ICF"

    const-string v15, "ACF"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v1

    move v2, v9

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "PoW"

    const v2, 0xfffe

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Ovr"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 87
    return-void
.end method

.method private install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0x80

    if-gt v5, v6, :cond_8

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_8

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v5

    rem-int/2addr v5, v6

    if-nez v5, :cond_8

    .line 70
    const/16 v5, 0x13

    if-eq v1, v5, :cond_1

    new-instance v5, Ljava/util/HashSet;

    invoke-static/range {p5 .. p5}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeated career team"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    invoke-static {}, Lcom/firsttouchgames/dls7/LocalSeasons;->empty()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "TID"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "Lea"

    invoke-virtual {v1, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "NRo"

    move/from16 v9, p7

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const-string v9, "NT"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "Tea"

    invoke-static/range {p5 .. p5}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->zeros(I)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "GoF"

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "SIn"

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v12

    move v13, v8

    :goto_1
    if-ge v13, v12, :cond_2

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    invoke-virtual {v14, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Pla"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Win"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Los"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "GoA"

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    filled-new-array {v8, v7, v1, v6}, [I

    move-result-object v10

    filled-new-array {v8, v6, v7, v1}, [I

    move-result-object v13

    filled-new-array {v8, v1, v6, v7}, [I

    move-result-object v1

    filled-new-array {v10, v13, v1}, [[I

    move-result-object v1

    move v6, v8

    :goto_2
    if-ge v6, v7, :cond_5

    move v10, v8

    :goto_3
    div-int/lit8 v13, v12, 0x4

    if-ge v10, v13, :cond_4

    aget-object v13, v1, v6

    array-length v14, v13

    move v15, v8

    :goto_4
    if-ge v15, v14, :cond_3

    aget v16, v13, v15

    mul-int/lit8 v17, v10, 0x4

    add-int v7, v17, v16

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    goto :goto_2

    :cond_5
    const-string v1, "Fix"

    invoke-virtual {v5, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "NG"

    div-int/lit8 v12, v12, 0x4

    invoke-virtual {v6, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Sta"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "Tab"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->fillRound(Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_6
    const-string v4, "CRo"

    invoke-static {v3, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "stages"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "bit"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "done"

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "winner"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "finish"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->contains(Lorg/json/JSONArray;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "Msk"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    :cond_7
    return-void

    .line 69
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid career draw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$sort$0(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 4

    .line 48
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->points(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->points(Lorg/json/JSONObject;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    const-string v1, "GoF"

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "GoA"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "TID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_2
    return v0
.end method

.method private static list(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static main(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Mai"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static maskAt(I)I
    .locals 1

    .line 24
    if-ltz p0, :cond_0

    sget-object v0, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Career slot out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const-string v0, "local_seasons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private migratePostseason(Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "NFx"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 102
    const-string v6, "Mat"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "TID"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v3, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 103
    :goto_0
    const/16 v11, 0x2c

    const/16 v12, 0x13

    const/16 v13, 0x12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ge v6, v11, :cond_2

    const/16 v11, 0x2a

    if-eq v6, v11, :cond_1

    const/16 v11, 0x2b

    if-eq v6, v11, :cond_1

    if-eq v10, v13, :cond_1

    if-ne v10, v12, :cond_2

    :cond_1
    move v10, v14

    goto :goto_1

    :cond_2
    move v10, v15

    .line 104
    :goto_1
    const-string v11, "Msk"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, -0x301

    invoke-virtual {v1, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    if-eq v9, v13, :cond_3

    if-ne v9, v12, :cond_6

    :cond_3
    invoke-static {v0, v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "done"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v10, :cond_6

    .line 106
    :cond_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "slot"

    invoke-virtual {v8, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "competition"

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "stage"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 107
    if-eqz v3, :cond_5

    const-string v6, "next_fixture"

    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_5
    const-string v3, "removed_legacy_postseason"

    invoke-static {v0, v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "Sea"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {}, Lcom/firsttouchgames/dls7/LocalSeasons;->empty()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "stages"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "bit"

    invoke-virtual {v5, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "winner"

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "finish"

    const/16 v8, 0x9

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    :cond_6
    const/4 v3, 0x2

    if-eqz v10, :cond_f

    .line 113
    const-string v4, "Res"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 114
    if-nez v4, :cond_7

    const/4 v5, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    sub-int/2addr v5, v14

    :goto_2
    const/16 v6, 0x29

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_3
    const-string v6, "Rou"

    const-string v8, "AID"

    const-string v9, "HID"

    if-ltz v5, :cond_d

    .line 115
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string v11, "Pla"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v11, v14

    goto :goto_5

    .line 116
    :cond_8
    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v11, "Tea"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 117
    if-ltz v14, :cond_b

    if-eq v14, v13, :cond_b

    if-eq v14, v12, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ne v11, v3, :cond_b

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    const/16 v12, 0x102

    if-eq v11, v12, :cond_a

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    if-ne v13, v12, :cond_9

    goto :goto_4

    :cond_9
    const/4 v11, 0x1

    goto :goto_5

    .line 118
    :cond_a
    :goto_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_6

    .line 117
    :cond_b
    const/4 v11, 0x1

    goto :goto_5

    .line 115
    :cond_c
    move v11, v14

    .line 114
    :goto_5
    add-int/lit8 v5, v5, -0x1

    move v14, v11

    const/16 v12, 0x13

    const/16 v13, 0x12

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 121
    :goto_6
    if-nez v4, :cond_e

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v9, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    :cond_e
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->finishSeason(Lorg/json/JSONObject;)V

    .line 124
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "postseason_rules"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    return-void
.end method

.method private static obj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static points(Lorg/json/JSONObject;)I
    .locals 2

    .line 45
    const-string v0, "Win"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const-string v1, "Pla"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "Los"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static position(Lorg/json/JSONObject;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->sort(Lorg/json/JSONObject;)V

    const-string v0, "Tab"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Sta"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private random(Lorg/json/JSONObject;I)Ljava/util/Random;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/Random;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Sea"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    const-wide/32 v3, 0xf4243

    mul-long/2addr v1, v3

    const-wide v3, 0x444c533230L

    xor-long/2addr v1, v3

    int-to-long p1, p2

    xor-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method private static round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "NT"

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Tea"

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->zeros(I)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "Sco"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->flags(I)Lorg/json/JSONArray;

    move-result-object p0

    const-string v0, "Pen"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private roundResult(Lorg/json/JSONObject;ILorg/json/JSONObject;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v0, p3

    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->drawRound(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "Tea"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string v11, "Rou"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "TID"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit16 v14, v13, 0x2717

    mul-int/lit8 v15, v12, 0x65

    add-int/2addr v14, v15

    invoke-direct {v6, v1, v14}, Lcom/firsttouchgames/dls7/LocalSeasons;->random(Lorg/json/JSONObject;I)Ljava/util/Random;

    move-result-object v14

    .line 155
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object/from16 v16, v11

    const-string v11, "mirror_lost"

    move-object/from16 v17, v5

    const-string v5, "NRo"

    const-string v1, "Lea"

    if-ge v15, v2, :cond_11

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-eqz v0, :cond_0

    move-object/from16 v19, v7

    const-string v7, "HID"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_1

    const-string v7, "AID"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v19, v7

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move/from16 v20, v15

    if-eqz v7, :cond_2

    const-string v15, "HSc"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "ASc"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "HPe"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "APe"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v14

    move/from16 v0, v22

    move/from16 v14, v23

    move/from16 v24, v21

    move/from16 v21, v12

    move v12, v15

    move/from16 v15, v24

    goto :goto_2

    :cond_2
    const/16 v15, 0x102

    if-eq v2, v15, :cond_10

    if-eq v6, v15, :cond_10

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v15, v18

    move/from16 v0, v21

    move/from16 v21, v12

    move-object/from16 v18, v14

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 156
    :goto_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    if-ne v15, v0, :cond_4

    if-ne v14, v12, :cond_4

    if-nez v7, :cond_3

    const/4 v12, 0x3

    const/4 v14, 0x4

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Knockout match needs a winner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_4
    :goto_3
    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    if-le v14, v12, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v7

    move-object/from16 v22, v9

    if-le v12, v14, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-static {v3, v2, v15, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->updateGoals(Lorg/json/JSONObject;III)V

    invoke-static {v3, v6, v0, v15}, Lcom/firsttouchgames/dls7/LocalSeasons;->updateGoals(Lorg/json/JSONObject;III)V

    if-gt v15, v0, :cond_8

    if-ne v15, v0, :cond_7

    if-le v14, v12, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_9

    move v7, v2

    goto :goto_8

    :cond_9
    move v7, v6

    :goto_8
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/16 v9, 0x13

    if-ne v13, v9, :cond_a

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_b

    const/4 v9, 0x1

    invoke-virtual {v4, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    :cond_b
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x102

    if-eq v2, v1, :cond_d

    if-ne v6, v1, :cond_c

    goto :goto_a

    :cond_c
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    goto :goto_b

    :cond_d
    :goto_a
    if-ne v7, v1, :cond_e

    if-eqz v0, :cond_c

    :cond_e
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v0, v21

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "finish"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "bit"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->summaryKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "MsC"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v1, v13, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->award(Lorg/json/JSONObject;II)V

    goto :goto_b

    :cond_f
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    .line 155
    :goto_b
    add-int/lit8 v15, v20, 0x2

    move/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v11, v16

    move-object/from16 v5, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v19

    move/from16 v12, v21

    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_10
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A personal fixture cannot be simulated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_11
    const/4 v2, 0x4

    move-object/from16 v6, p0

    move-object v0, v1

    move-object/from16 v22, v9

    move/from16 v21, v12

    move-object/from16 v1, p1

    const-string v7, "Sco"

    move-object/from16 v9, v17

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Pen"

    move-object/from16 v12, v22

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "PRo"

    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x1

    add-int/lit8 v12, v21, 0x1

    move-object/from16 v8, v16

    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->sort(Lorg/json/JSONObject;)V

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "last_completed_round"

    invoke-static {v9}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Tab"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "last_completed_table"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "CRo"

    if-eqz v0, :cond_17

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ge v12, v0, :cond_12

    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->fillRound(Lorg/json/JSONObject;)V

    goto :goto_10

    :cond_12
    move/from16 v5, p2

    if-nez v5, :cond_13

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->afterLeague(Lorg/json/JSONObject;)V

    goto :goto_10

    :cond_13
    const/16 v0, 0x9

    if-ne v13, v0, :cond_14

    const/16 v3, 0xa

    goto :goto_c

    :cond_14
    const/16 v3, 0x10

    :goto_c
    if-ne v13, v0, :cond_15

    const/16 v4, 0x8

    goto :goto_d

    :cond_15
    const/16 v4, 0x40

    :goto_d
    if-ne v13, v0, :cond_16

    const/4 v0, 0x6

    move v7, v0

    goto :goto_e

    :cond_16
    move v7, v2

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->toKnockout(Lorg/json/JSONObject;IIII)V

    goto :goto_10

    .line 163
    :cond_17
    move/from16 v5, p2

    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v2, v0, :cond_19

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, -0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    :goto_f
    invoke-direct {v6, v1, v5, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->finishStage(Lorg/json/JSONObject;II)V

    .line 164
    :cond_19
    :goto_10
    return-void
.end method

.method private selectNext(Lorg/json/JSONObject;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    array-length v0, v0

    if-ge p2, v0, :cond_6

    sget-object v0, Lcom/firsttouchgames/dls7/LocalSeasons;->MASK:[I

    aget v0, v0, p2

    and-int/lit16 v1, v0, 0x300

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->activatePostseason(Lorg/json/JSONObject;I)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->indexForMask(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bit"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_0

    const-string v0, "done"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->drawRound(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Tea"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/16 v6, 0x102

    if-eq v5, v6, :cond_4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Mat"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Tur"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "HID"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "AID"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "TID"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "Rou"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "NFx"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->roundResult(Lorg/json/JSONObject;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 173
    :cond_6
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->finishSeason(Lorg/json/JSONObject;)V

    .line 174
    return-void
.end method

.method private static sort(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string v0, "Tab"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Sta"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "NG"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    div-int/2addr v4, v3

    .line 48
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_1
    if-ge v8, v4, :cond_1

    mul-int v9, v6, v4

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/firsttouchgames/dls7/LocalSeasons$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/firsttouchgames/dls7/LocalSeasons$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    return-void
.end method

.method private static stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "stages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static summaryKey(I)Ljava/lang/String;
    .locals 1

    .line 130
    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    const-string p0, "DCF"

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "PoF"

    goto :goto_2

    :cond_2
    const/16 v0, 0x400

    if-ne p0, v0, :cond_3

    const-string p0, "AMF"

    goto :goto_2

    :cond_3
    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x40

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x80

    if-ne p0, v0, :cond_5

    const-string p0, "ACF"

    goto :goto_2

    :cond_5
    const/16 v0, 0x100

    if-ne p0, v0, :cond_6

    const-string p0, "FCF"

    goto :goto_2

    :cond_6
    const-string p0, "UCF"

    goto :goto_2

    :cond_7
    :goto_0
    const-string p0, "ICF"

    goto :goto_2

    :cond_8
    :goto_1
    const-string p0, "GCF"

    :goto_2
    return-object p0
.end method

.method private toKnockout(Lorg/json/JSONObject;IIII)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Tab"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Sta"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "NG"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_1

    move v7, v5

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    mul-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v7

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "TID"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const-string v1, "SIn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v5, 0x102

    invoke-static {v4, v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->contains(Lorg/json/JSONArray;I)Z

    move-result v5

    const/16 v6, 0x9

    if-nez v5, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Sum"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Lcom/firsttouchgames/dls7/LocalSeasons;->summaryKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "MsC"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    or-int v8, v8, p4

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Msk"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "bit"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    not-int v10, v10

    and-int/2addr v8, v10

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    invoke-static {v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v4, p3

    mul-int/lit16 v14, v4, 0x1f5

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/firsttouchgames/dls7/LocalSeasons;->choose(Lorg/json/JSONObject;Ljava/util/List;IIZ)Lorg/json/JSONArray;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/firsttouchgames/dls7/LocalSeasons;->install(Lorg/json/JSONObject;IIILorg/json/JSONArray;ZI)V

    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-static/range {p1 .. p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    :cond_3
    return-void
.end method

.method private static tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "TIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Tou"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static updateGoals(Lorg/json/JSONObject;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    const-string v0, "SIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Tea"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "GoF"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    const-string v0, "Lea"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Tab"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "Sta"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move v0, v3

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "TID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "Pla"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "Win"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le p2, p3, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    add-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "Los"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ge p2, p3, :cond_4

    move v3, v0

    :cond_4
    add-int/2addr v4, v3

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "GoA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    :cond_5
    return-void
.end method

.method private static zeros(I)Lorg/json/JSONArray;
    .locals 2

    .line 29
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method activeIndex(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Mat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->maskAt(I)I

    move-result p1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->indexForMask(I)I

    move-result p1

    return p1
.end method

.method complete(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->activeIndex(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Mat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Rou"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "TID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "Lea"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, p1, v0, p2}, Lcom/firsttouchgames/dls7/LocalSeasons;->roundResult(Lorg/json/JSONObject;ILorg/json/JSONObject;)V

    .line 181
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "MsC"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->maskAt(I)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "tournament_id"

    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v4, "competition_index"

    invoke-virtual {p2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v4, "league"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "round"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "slot"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "finish"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 184
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "last_completed_round"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "round_result"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "last_completed_table"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "Sta"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "round_standings"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 185
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "NG"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "round_groups"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "CRo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Tea"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "next_round_teams"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 186
    invoke-direct {p0, p1, v1}, Lcom/firsttouchgames/dls7/LocalSeasons;->selectNext(Lorg/json/JSONObject;I)V

    return-object p2
.end method

.method migrate(Lorg/json/JSONObject;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    const-string v0, "Prf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Car"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "TIn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 90
    :cond_0
    const-string v1, "local_seasons"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->migratePostseason(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->calendarResults(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->validate(Lorg/json/JSONObject;)V

    return-void

    .line 91
    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "TID"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v7, "SIn"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Tea"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_c

    .line 92
    const-string v10, "career"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const-string v12, "ranked_clubs"

    if-nez v10, :cond_4

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v13, "Sea"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "Rou"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    iget-object v5, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const/16 v10, 0x102

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    const/16 v13, 0xf

    if-ge v10, v13, :cond_2

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "Tab"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "Sta"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v2

    :goto_1
    if-ge v7, v11, :cond_3

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/LocalLeague;->advance(Lorg/json/JSONObject;I)V

    goto :goto_2

    .line 93
    :cond_4
    move v6, v5

    :goto_2
    const-string v4, "legacy_single_league_career"

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalSeasons;->policy:Lorg/json/JSONObject;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v2

    move v7, v5

    :goto_4
    const/16 v9, 0x8

    if-ge v5, v9, :cond_8

    if-ne v5, v6, :cond_7

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v9

    :cond_6
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_7
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v10, v11, :cond_6

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v7, v10

    goto :goto_5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 94
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "version"

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "division"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "tree"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "bit"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "done"

    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "winner"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "finish"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "stages"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-static {v3}, Lcom/firsttouchgames/dls7/LocalSeasons;->fillRound(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->initializeCups(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Msk"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "MsC"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Mat"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "Tur"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    move v0, v7

    :goto_7
    const/4 v3, 0x2

    if-gt v0, v3, :cond_b

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->firstSlot(I)I

    move-result v5

    if-le v3, v5, :cond_a

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->stage(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v5, 0x9

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v7, :cond_9

    const/16 v10, 0xc

    goto :goto_8

    :cond_9
    move v10, v11

    :goto_8
    or-int/2addr v5, v10

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v5, v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->round(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "CRo"

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 98
    :cond_b
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->migratePostseason(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->validate(Lorg/json/JSONObject;)V

    .line 99
    return-void

    .line 91
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Career migration requires 16 clubs"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_d
    :goto_9
    return-void
.end method

.method nextSeason(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "Ovr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 190
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "division"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "Sea"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x102

    invoke-static {v6, v7}, Lcom/firsttouchgames/dls7/LocalSeasons;->position(Lorg/json/JSONObject;I)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "tree"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v0, v5}, Lcom/firsttouchgames/dls7/LocalSeasons;->competition(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Tab"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "Sta"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 191
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    move v13, v5

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    const-string v15, "TID"

    if-ge v13, v14, :cond_0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v1, v12}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    move v9, v5

    :goto_1
    const/16 v12, 0x8

    if-ge v9, v12, :cond_2

    if-eq v9, v1, :cond_1

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v12}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit16 v13, v9, 0x2bc

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v13}, Lcom/firsttouchgames/dls7/LocalSeasons;->random(Lorg/json/JSONObject;I)Ljava/util/Random;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    invoke-static {v12}, Lcom/firsttouchgames/dls7/LocalSeasons;->array(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_1
    move-object/from16 v14, p0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 194
    :cond_2
    move-object/from16 v14, p0

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "PoF"

    const/16 v13, 0x9

    invoke-virtual {v2, v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v7

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    .line 195
    :goto_3
    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v13

    .line 196
    move v9, v5

    :goto_4
    const/4 v5, 0x7

    if-ge v9, v5, :cond_9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    move-object/from16 v16, v13

    if-ne v12, v1, :cond_4

    const/16 v13, 0x102

    if-ne v2, v13, :cond_4

    move v13, v6

    goto :goto_5

    :cond_4
    if-ne v12, v1, :cond_6

    const/4 v13, 0x2

    if-lt v6, v13, :cond_6

    const/4 v13, 0x6

    if-ge v6, v13, :cond_6

    const/4 v13, 0x2

    if-ne v6, v13, :cond_5

    const/4 v13, 0x3

    goto :goto_5

    :cond_5
    const/4 v13, 0x2

    goto :goto_5

    :cond_6
    const/4 v13, 0x2

    :goto_5
    move/from16 v17, v2

    const/4 v2, 0x0

    :goto_6
    move/from16 v18, v6

    const/4 v6, 0x3

    if-ge v2, v6, :cond_8

    const/4 v6, 0x2

    if-ge v2, v6, :cond_7

    move v6, v2

    goto :goto_7

    :cond_7
    move v6, v13

    :goto_7
    move/from16 v19, v12

    rsub-int/lit8 v12, v2, 0xf

    move/from16 v20, v13

    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v6, v12}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v18

    move/from16 v12, v19

    move/from16 v13, v20

    goto :goto_6

    :cond_8
    move/from16 v19, v12

    move-object/from16 v14, p0

    move-object/from16 v13, v16

    move/from16 v2, v17

    move/from16 v6, v18

    move/from16 v9, v19

    const/4 v5, 0x0

    const/16 v7, 0x102

    const/16 v12, 0x8

    goto :goto_4

    .line 197
    :cond_9
    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_8
    const/16 v6, 0x8

    if-ge v2, v6, :cond_b

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    const/16 v9, 0x102

    invoke-static {v7, v9}, Lcom/firsttouchgames/dls7/LocalSeasons;->contains(Lorg/json/JSONArray;I)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    if-ltz v5, :cond_f

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->car(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "ATS"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalSeasons;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v9, 0x0

    invoke-static {v4, v9, v9}, Lcom/firsttouchgames/dls7/LocalLeague;->fresh(IIZ)Lorg/json/JSONObject;

    move-result-object v4

    const-string v12, "TIn"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "Tou"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {v13}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v14, 0x102

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v13}, Lcom/firsttouchgames/dls7/LocalSeasons;->array(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v7, "SIn"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Tea"

    invoke-static {v13}, Lcom/firsttouchgames/dls7/LocalSeasons;->array(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v9, 0x0

    :goto_9
    const/16 v8, 0x10

    if-ge v9, v8, :cond_c

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Prf"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "Car"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "bit"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "done"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "winner"

    const/4 v10, -0x1

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "finish"

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v6, "stages"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-static {v4, v9}, Lcom/firsttouchgames/dls7/LocalLeague;->advance(Lorg/json/JSONObject;I)V

    invoke-static {v12}, Lcom/firsttouchgames/dls7/LocalSeasons;->fillRound(Lorg/json/JSONObject;)V

    invoke-direct/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->initializeCups(Lorg/json/JSONObject;)V

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->main(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Msk"

    const/16 v4, 0x15

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "MsC"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Tur"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->validate(Lorg/json/JSONObject;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-ge v5, v1, :cond_d

    move v2, v8

    goto :goto_a

    :cond_d
    move v2, v9

    :goto_a
    const-string v3, "Promoted"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    if-le v5, v1, :cond_e

    move v5, v8

    goto :goto_b

    :cond_e
    move v5, v9

    :goto_b
    const-string v1, "Relegated"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 197
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lost user during promotion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Season still has fixtures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method validate(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tree"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->tournaments(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    invoke-static {v4}, Lcom/firsttouchgames/dls7/LocalSeasons;->list(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Club appears in two divisions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid division size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalSeasons;->meta(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "division"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    const/16 v0, 0x102

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalSeasons;->contains(Lorg/json/JSONArray;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    return-void

    .line 127
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "User division mismatch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid competition count"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
