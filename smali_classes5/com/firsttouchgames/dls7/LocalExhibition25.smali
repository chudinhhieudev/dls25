.class final Lcom/firsttouchgames/dls7/LocalExhibition25;
.super Ljava/lang/Object;
.source "LocalExhibition25.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method static apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "SyncedMod"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXHIBMATCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "MP"

    invoke-static {v1, v4}, Lcom/firsttouchgames/dls7/LocalExhibition25;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Hom"

    invoke-static {v1, v5}, Lcom/firsttouchgames/dls7/LocalExhibition25;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Fft"

    invoke-static {v1, v6}, Lcom/firsttouchgames/dls7/LocalExhibition25;->flag(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    .line 21
    const-string v7, "HSc"

    const-wide/16 v8, 0x63

    invoke-static {v1, v7, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    long-to-int v7, v10

    const-string v10, "ASc"

    invoke-static {v1, v10, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    long-to-int v10, v10

    const-string v11, "HPe"

    invoke-static {v1, v11, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v11

    long-to-int v11, v11

    const-string v12, "APe"

    invoke-static {v1, v12, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v12

    long-to-int v12, v12

    const-string v13, "Yel"

    invoke-static {v1, v13, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v14

    long-to-int v14, v14

    const-string v15, "Red"

    invoke-static {v1, v15, v8, v9}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v8

    long-to-int v8, v8

    .line 22
    const-string v9, "HID"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "AID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v9, v0}, [I

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v2, v17

    :goto_0
    move/from16 v18, v10

    const/4 v10, 0x2

    if-ge v2, v10, :cond_2

    aget v10, v16, v2

    move/from16 v19, v7

    const v7, 0xfffe

    if-gt v10, v7, :cond_1

    if-gez v10, :cond_0

    if-eqz v4, :cond_1

    const/4 v7, -0x3

    if-eq v10, v7, :cond_0

    const/4 v7, -0x4

    if-ne v10, v7, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v18

    move/from16 v7, v19

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid exhibition team"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    move/from16 v19, v7

    const-string v2, "GDT"

    move/from16 v16, v11

    const-wide v10, 0xffffffffL

    invoke-static {v1, v2, v10, v11}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    const-string v2, "Cr"

    const-wide/16 v10, 0x2710

    move/from16 v20, v8

    invoke-static {v1, v2, v10, v11}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    long-to-int v2, v7

    const-string v7, "SPP"

    invoke-static {v1, v7, v10, v11}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    long-to-int v8, v7

    const-string v7, "DP"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-static {v1, v7, v10, v11}, Lcom/firsttouchgames/dls7/LocalExhibition25;->number(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v21, 0x0

    cmp-long v7, v10, v21

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ladder points disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    move/from16 v10, v19

    goto :goto_2

    :cond_5
    move/from16 v10, v18

    :goto_2
    if-eqz v5, :cond_6

    move/from16 v11, v18

    goto :goto_3

    :cond_6
    move/from16 v11, v19

    :goto_3
    const-string v7, "Common"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v1, "SeasonPass"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v4, :cond_7

    const-string v21, "LocalMP"

    goto :goto_4

    :cond_7
    const-string v21, "Exhibition"

    :goto_4
    move-object/from16 v3, v21

    if-le v10, v11, :cond_8

    const-string v21, "WinPoints"

    :goto_5
    move/from16 v22, v0

    move-object/from16 v0, v21

    goto :goto_6

    :cond_8
    if-ne v10, v11, :cond_9

    const-string v21, "DrawPoints"

    goto :goto_5

    :cond_9
    const-string v21, "LosePoints"

    goto :goto_5

    .line 25
    :goto_6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v9

    const-string v9, "GoalPoints"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    mul-int/2addr v9, v10

    add-int/2addr v0, v9

    if-nez v11, :cond_a

    const-string v9, "CleanSheetPoints"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_7

    :cond_a
    move/from16 v3, v17

    :goto_7
    add-int/2addr v0, v3

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalExhibition25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "SPa"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "BoU"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "Boosted"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "BonusSPPercent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 27
    :cond_b
    const-string v1, "Economy"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ExhibitionMatchCoins"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-le v10, v11, :cond_c

    const-string v7, "WinMatch"

    goto :goto_8

    :cond_c
    if-ne v10, v11, :cond_d

    const-string v7, "DrawMatch"

    goto :goto_8

    :cond_d
    const-string v7, "LoseMatch"

    :goto_8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "PerGoal"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    mul-int/2addr v9, v10

    add-int/2addr v7, v9

    if-nez v11, :cond_e

    const-string v9, "CleanSheet"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_9

    :cond_e
    move/from16 v9, v17

    :goto_9
    add-int/2addr v7, v9

    .line 29
    const-string v9, "CareerWinMatchCoins"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v23, v15

    move/from16 v15, v17

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v9, v25

    goto :goto_a

    :cond_f
    const-string v1, "StadiumBonusPercent"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v15, v1

    div-int/lit8 v15, v15, 0x64

    add-int/2addr v7, v15

    .line 30
    if-eqz v6, :cond_10

    if-nez v2, :cond_23

    if-nez v8, :cond_23

    :cond_10
    if-eqz v4, :cond_11

    move/from16 v7, v17

    :cond_11
    if-gt v2, v7, :cond_23

    if-gt v8, v0, :cond_23

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalExhibition25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PSt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "GMS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v4, :cond_12

    move v4, v3

    goto :goto_b

    :cond_12
    const/4 v4, 0x4

    :goto_b
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/firsttouchgames/dls7/LocalExhibition25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x3

    if-le v10, v11, :cond_13

    move v9, v3

    goto :goto_c

    :cond_13
    if-ge v10, v11, :cond_14

    const/4 v9, 0x2

    goto :goto_c

    :cond_14
    move v9, v7

    :goto_c
    if-ne v9, v7, :cond_17

    move/from16 v15, v16

    if-eq v15, v12, :cond_18

    if-eqz v5, :cond_15

    if-le v15, v12, :cond_16

    goto :goto_d

    :cond_15
    if-le v12, v15, :cond_16

    :goto_d
    move v7, v3

    goto :goto_e

    :cond_16
    const/4 v7, 0x2

    :goto_e
    move v9, v7

    goto :goto_f

    :cond_17
    move/from16 v15, v16

    .line 32
    :cond_18
    :goto_f
    const-string v7, "Pla"

    invoke-static {v6, v7, v3}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-ne v9, v3, :cond_19

    move v7, v3

    goto :goto_10

    :cond_19
    move/from16 v7, v17

    :goto_10
    const-string v1, "Win"

    invoke-static {v6, v1, v7}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const/4 v1, 0x2

    if-ne v9, v1, :cond_1a

    move v1, v3

    goto :goto_11

    :cond_1a
    move/from16 v1, v17

    :goto_11
    const-string v7, "Los"

    invoke-static {v6, v7, v1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "GoF"

    invoke-static {v6, v1, v10}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "GoA"

    invoke-static {v6, v1, v11}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    if-nez v11, :cond_1b

    move v1, v3

    goto :goto_12

    :cond_1b
    move/from16 v1, v17

    :goto_12
    const-string v7, "Cle"

    invoke-static {v6, v7, v1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-static {v6, v13, v14}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    move/from16 v1, v20

    move-object/from16 v7, v23

    invoke-static {v6, v7, v1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->add(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move/from16 v13, v21

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    move/from16 v13, v22

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    const-string v13, "Tea"

    invoke-virtual {v1, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move/from16 v13, v19

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    move/from16 v13, v18

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    const-string v13, "Sco"

    invoke-virtual {v1, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-ne v9, v3, :cond_1c

    const-string v3, "BWi"

    goto :goto_13

    :cond_1c
    const/4 v3, 0x2

    if-ne v9, v3, :cond_1d

    const-string v3, "BLo"

    goto :goto_13

    :cond_1d
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1e

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/firsttouchgames/dls7/LocalExhibition25;->delta(Lorg/json/JSONObject;)I

    move-result v10

    if-le v7, v10, :cond_1e

    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_1e
    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    const-string v7, "Pen"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "UsH"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "LRe"

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "For"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    move/from16 v7, v17

    :goto_14
    const/4 v9, 0x4

    if-ge v7, v9, :cond_1f

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1f
    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    if-lez v2, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exhibition-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v2, v2

    const-string v4, "exhibition_match"

    move-object/from16 v5, p0

    invoke-static {v5, v0, v2, v3, v4}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    goto :goto_15

    :cond_20
    move-object/from16 v5, p0

    move-object/from16 v1, p2

    :goto_15
    if-lez v8, :cond_21

    new-instance v0, Lcom/firsttouchgames/dls7/OfflineChallenges26;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v2, v3}, Lcom/firsttouchgames/dls7/OfflineChallenges26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v2, v8}, Lcom/firsttouchgames/dls7/OfflineChallenges26;->points(Lorg/json/JSONObject;II)V

    .line 36
    :cond_21
    const-string v0, "exhibition_results25"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_22

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    return-void

    .line 30
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid exhibition reward"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong exhibition event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method private static delta(Lorg/json/JSONObject;)I
    .locals 2

    .line 17
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Sco"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_1
    return v0
.end method

.method private static flag(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exhibition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static number(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    const-string v1, "Invalid exhibition "

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    cmp-long p2, v2, p2

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    long-to-double v4, v2

    cmpl-double p0, p2, v4

    if-nez p0, :cond_0

    return-wide v2

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

.method private static p(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static restoreStatsForQueue(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "SyncedMod"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EXHIBMATCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalExhibition25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "PSt"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "GMS"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalExhibition25;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 15
    const/4 p2, 0x4

    const/4 v1, 0x1

    filled-new-array {v1, p2}, [I

    move-result-object p2

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalExhibition25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_2
    return-void
.end method
