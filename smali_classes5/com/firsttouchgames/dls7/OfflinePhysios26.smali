.class final Lcom/firsttouchgames/dls7/OfflinePhysios26;
.super Ljava/lang/Object;
.source "OfflinePhysios26.java"


# static fields
.field private static final MAX_ENERGY:I = 0x927c


# instance fields
.field private final discounts:Lorg/json/JSONArray;

.field private final rules:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "Common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Physios"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->rules:Lorg/json/JSONObject;

    .line 13
    const-string v0, "Stadium"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "MedicalCentreBoosts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "HealCostPercentReduce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->discounts:Lorg/json/JSONArray;

    .line 14
    return-void
.end method


# virtual methods
.method apply(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Lev"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/firsttouchgames/dls7/OfflinePhysios26;->price(Lorg/json/JSONObject;I)I

    move-result v6

    iget-object v7, v0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->rules:Lorg/json/JSONObject;

    const-string v8, "EnergyBoostPercent"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 25
    iget-object v8, v0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->rules:Lorg/json/JSONObject;

    const-string v9, "HealInjuries"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 26
    :goto_0
    if-ltz v7, :cond_20

    const/16 v11, 0x64

    if-gt v7, v11, :cond_20

    const-string v12, "Bst"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v7, :cond_20

    const-string v13, "Hea"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-ne v14, v8, :cond_20

    .line 29
    const-string v14, "Evs"

    const-string v15, "DMo"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    :goto_1
    const/4 v11, 0x2

    if-ge v15, v11, :cond_3

    aget-object v11, v14, v15

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Boolean;

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid physio context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x64

    goto :goto_1

    .line 30
    :cond_3
    const-string v11, "Prf"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v14, "Stf"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "NPh"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 31
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/4 v9, 0x3

    if-ne v15, v9, :cond_1f

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    if-ltz v9, :cond_1f

    .line 32
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    const-string v15, "Cr"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v10, "Gm"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    if-ltz v15, :cond_1e

    if-ltz v2, :cond_1e

    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v15, v0, :cond_5

    neg-int v0, v6

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v2, v0, :cond_6

    :cond_5
    if-eqz v9, :cond_1e

    if-nez v15, :cond_1e

    if-nez v2, :cond_1e

    .line 35
    :cond_6
    const-string v0, "DrT"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "Man"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "LU"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v6, "PrPs"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "PrPl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    move/from16 p2, v2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 36
    move/from16 v18, v15

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 37
    move-object/from16 v19, v13

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v20, v12

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    move-object/from16 v21, v4

    const-string v4, "PID"

    if-ge v13, v12, :cond_9

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v22, v6

    const-string v6, "PPt"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v23, v11

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_8

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v24

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, v20

    move-object/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v11, v23

    goto :goto_4

    .line 38
    :cond_9
    move-object/from16 v23, v11

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v11, "energy_after"

    const-string v12, "InT"

    const-string v13, "InI"

    const-string v3, "En"

    if-ge v1, v6, :cond_11

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    move-object/from16 v22, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_f

    move-object/from16 v24, v15

    const v15, 0x927c

    if-gt v3, v15, :cond_f

    .line 41
    mul-int v25, v7, v15

    const/16 v16, 0x64

    div-int/lit8 v25, v25, 0x64

    move/from16 v26, v7

    add-int v7, v3, v25

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v0, 0x1

    .line 42
    :goto_9
    if-ne v7, v3, :cond_c

    if-eqz v8, :cond_e

    if-eqz v0, :cond_e

    :cond_c
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v12, "energy_before"

    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v8, :cond_d

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    const-string v6, "injury_cleared"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    :cond_e
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p3

    move-object/from16 v0, v22

    move-object/from16 v15, v24

    move/from16 v7, v26

    goto/16 :goto_7

    .line 40
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid player energy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing owned physio player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_11
    move/from16 v26, v7

    move-object/from16 v24, v15

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v9, :cond_12

    goto :goto_b

    :cond_12
    move/from16 v15, v18

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v9, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v0, p2

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v0, 0x0

    .line 45
    :goto_e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 46
    if-eqz v9, :cond_16

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-virtual {v14, v5, v1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    move-object v7, v3

    move/from16 v16, v9

    move/from16 p2, v15

    goto :goto_10

    .line 47
    :cond_16
    const-string v1, "physio"

    if-lez v15, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    move-object/from16 v3, p3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "-physio-coins"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    neg-int v14, v15

    move/from16 p2, v15

    int-to-long v14, v14

    move/from16 v16, v9

    move-object/from16 v9, p1

    invoke-static {v9, v6, v14, v15, v1}, Lcom/firsttouchgames/dls7/LocalEconomy;->credit(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    goto :goto_f

    :cond_17
    move-object v7, v3

    move/from16 v16, v9

    move/from16 p2, v15

    move-object/from16 v9, p1

    move-object/from16 v3, p3

    :goto_f
    if-lez v0, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-physio-gems"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    neg-int v6, v0

    int-to-long v14, v6

    invoke-static {v9, v3, v14, v15, v1}, Lcom/firsttouchgames/dls7/LocalEconomy;->gems(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;)Z

    .line 48
    :cond_18
    :goto_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1a

    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v9, v24

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v8, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v6, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v24, v9

    goto :goto_11

    .line 49
    :cond_1a
    const/4 v3, 0x0

    const-string v1, "Onb"

    move-object/from16 v4, v23

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "UPh"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_13

    .line 45
    :cond_1b
    move/from16 v16, v9

    move/from16 p2, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 51
    :goto_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, v21

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v5, v20

    move/from16 v4, v26

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v4, v19

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "CrD"

    move/from16 v5, p2

    neg-int v5, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "GmD"

    neg-int v0, v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "NumPlayers"

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PlayerIDs"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1c

    move v1, v6

    goto :goto_14

    :cond_1c
    move v1, v3

    :goto_14
    const-string v4, "PhysioUsed"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1d

    if-eqz v16, :cond_1d

    move v9, v6

    goto :goto_15

    :cond_1d
    move v9, v3

    :goto_15
    const-string v1, "FromInventory"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Changes"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Physio price quote changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid physio inventory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Physio recovery quote changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method price(Lorg/json/JSONObject;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    .line 17
    const-string v0, "Prf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Sta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "Fac"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 18
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->discounts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->rules:Lorg/json/JSONObject;

    const-string v1, "Cost"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflinePhysios26;->discounts:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 20
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 21
    rsub-int/lit8 p1, p1, 0x64

    mul-int/2addr p2, p1

    div-int/2addr p2, v0

    return p2

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid physio price policy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid medical level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid physio level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
