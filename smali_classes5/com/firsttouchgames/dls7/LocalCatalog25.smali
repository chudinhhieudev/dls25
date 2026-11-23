.class final Lcom/firsttouchgames/dls7/LocalCatalog25;
.super Ljava/lang/Object;
.source "LocalCatalog25.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(Lorg/json/JSONObject;I)Z
    .locals 0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "available"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "hidden"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "retired"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static addPool(Ljava/util/Map;ILorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;I",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "PPt"

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "profile"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalCatalog25;->ids(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 30
    :cond_1
    return-void
.end method

.method static bad(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "PID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->valid(Lorg/json/JSONObject;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0xffff

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->bad(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/json/JSONArray;

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->bad(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method static card(Lorg/json/JSONObject;ILorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "profile"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "PSt"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v5, "old_pst"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 25
    if-eqz p4, :cond_0

    if-ne v2, p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    const/4 p4, 0x0

    move v2, p4

    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {p4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x3e8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "IRa"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "IRAd"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "PGP"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method static choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "removed"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 15
    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "target"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    const-string v6, "position"

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_2
    const/16 v7, 0xb

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :goto_2
    const-string v8, "IRa"

    const-string v9, "profile"

    if-eqz v3, :cond_4

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_4
    const/16 v3, 0x1770

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    const-string v10, "rating"

    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    :goto_3
    const-string v3, "native_teams"

    if-lez v5, :cond_7

    invoke-static {v0, v5}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz p4, :cond_6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_7

    :cond_6
    return v5

    .line 17
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, -0x1

    const-wide v11, 0x7fffffffffffffffL

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v0, v14}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const/16 v15, 0x7530

    if-eq v14, v15, :cond_e

    const-string v15, "special_type"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_8

    :goto_5
    move/from16 p2, v1

    goto :goto_7

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_9

    goto :goto_5

    .line 18
    :cond_9
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v7, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    const-string v15, "position_group"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v7}, Lcom/firsttouchgames/dls7/LocalCatalog25;->group(I)I

    move-result v4

    if-ne v15, v4, :cond_b

    const v4, 0x186a0

    goto :goto_6

    :cond_b
    const v4, 0xf4240

    :goto_6
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v4, v13

    move/from16 p2, v1

    int-to-long v0, v4

    .line 19
    cmp-long v4, v0, v11

    if-ltz v4, :cond_c

    if-nez v4, :cond_d

    if-ge v14, v10, :cond_d

    :cond_c
    move-wide v11, v0

    move v10, v14

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_4

    .line 17
    :cond_e
    move/from16 p2, v1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_4

    .line 20
    :cond_f
    if-ltz v10, :cond_10

    return v10

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No replacement in app25 catalog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static group(I)I
    .locals 1

    .line 12
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

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
.end method

.method static ids(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
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

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

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

.method static mark(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "local_catalog25"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version"

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    return p0
.end method

.method static migrate(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    move-object/from16 v0, p2

    invoke-static/range {p0 .. p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->needs(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Prf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "players"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "DrT"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Man"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "LU"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "PrPs"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "PrPl"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 37
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    const-string v13, "PPt"

    const-string v4, "PID"

    move-object/from16 v16, v11

    const/4 v11, 0x1

    if-ge v14, v15, :cond_2

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {v13}, Lcom/firsttouchgames/dls7/LocalCatalog25;->ids(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    move-object/from16 v11, v16

    goto :goto_0

    .line 38
    :cond_2
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v15, v11, :cond_4

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v3, v11}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v18, v9

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v19, v1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v20, v2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 39
    move-object/from16 v21, v4

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v22, v10

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_8

    .line 40
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    move-object/from16 v23, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    if-eqz v8, :cond_7

    .line 41
    invoke-static {v3, v10}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v24, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v26, v5

    move-object/from16 v25, v14

    goto :goto_4

    :cond_6
    move-object/from16 v24, v12

    :goto_3
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v25, v14

    const/4 v14, 0x0

    invoke-static {v3, v0, v10, v12, v14}, Lcom/firsttouchgames/dls7/LocalCatalog25;->choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I

    move-result v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v26, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "from"

    invoke-virtual {v5, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "to"

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v10, v12

    .line 42
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v5, 0x1

    invoke-static {v8, v10, v3, v0, v5}, Lcom/firsttouchgames/dls7/LocalCatalog25;->card(Lorg/json/JSONObject;ILorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v22

    move-object/from16 v8, v23

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v5, v26

    goto/16 :goto_2

    .line 40
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing owned card before catalog migration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_8
    move-object/from16 v26, v5

    .line 45
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_9

    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v11, v5}, Lcom/firsttouchgames/dls7/LocalCatalog25;->choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "profile"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v8, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v12, v5

    const-string v5, "ShN"

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_5

    .line 46
    :cond_9
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const-string v5, "Ro"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const v6, 0xffff

    if-eqz v5, :cond_c

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_a
    if-eq v8, v6, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    move v8, v4

    :cond_b
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 47
    :cond_c
    const-string v5, "ICp"

    move-object/from16 v7, v26

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_d
    if-eq v8, v6, :cond_e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_7

    :cond_e
    move v4, v8

    :goto_7
    invoke-virtual {v7, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "Pl"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const/4 v5, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_14

    .line 50
    move-object/from16 v7, v22

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v10, v21

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v3, v12}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v22, v7

    goto :goto_a

    :cond_f
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :goto_9
    move-object/from16 v23, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v7, v2, :cond_11

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v24, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_10

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    goto :goto_9

    :cond_11
    move-object/from16 v24, v4

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    invoke-static {v8, v12, v3, v0, v2}, Lcom/firsttouchgames/dls7/LocalCatalog25;->card(Lorg/json/JSONObject;ILorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v22, v7

    .line 49
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v10

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    const v6, 0xffff

    goto/16 :goto_8

    .line 52
    :cond_14
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v10, v21

    const-string v2, "PrEM"

    move-object/from16 v4, v20

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "ScPl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    const-string v14, "native_teams"

    if-ge v12, v13, :cond_19

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v20, v7

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v22

    if-eqz v22, :cond_17

    move-object/from16 v22, v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto :goto_d

    :cond_15
    invoke-static {v13}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_16

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    goto :goto_c

    :cond_16
    const/16 v14, 0x102

    :goto_c
    const-string v15, "TID"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9, v7, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->addPool(Ljava/util/Map;ILorg/json/JSONObject;)V

    goto :goto_d

    :cond_17
    move-object/from16 v22, v15

    :cond_18
    :goto_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v20

    move-object/from16 v15, v22

    goto :goto_b

    :cond_19
    move-object/from16 v22, v15

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "SRT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    :cond_1a
    const-string v2, "onboarding"

    move-object/from16 v5, v19

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1b

    const-string v6, "pending"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    :goto_e
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v12, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 54
    const-string v8, "Rev"

    const-string v13, "RTi"

    const-string v15, "Lkd"

    move-object/from16 v19, v5

    const-string v5, "PDi"

    move-object/from16 v20, v11

    const-string v11, "ScP"

    move-object/from16 v25, v1

    const-string v1, "TrMPI"

    move-object/from16 v26, v14

    const-string v14, "TrMP"

    move-object/from16 v27, v1

    if-eqz v6, :cond_1e

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/16 v1, 0x7530

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    move-object/from16 v28, v4

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    const/16 v1, 0x3fc7

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v12, v4}, Lcom/firsttouchgames/dls7/LocalCatalog25;->choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v28

    goto :goto_f

    :cond_1c
    const-string v1, "candidates"

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v9, v2, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->addPool(Ljava/util/Map;ILorg/json/JSONObject;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    move-object/from16 v30, v14

    goto/16 :goto_14

    .line 55
    :cond_1e
    move-object/from16 v28, v4

    move-object/from16 v1, v28

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v4, v27

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    :goto_11
    move-object/from16 v27, v4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_22

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v28, v1

    const/16 v1, 0x9

    if-ge v4, v1, :cond_23

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v29

    if-eqz v29, :cond_20

    move-object/from16 v29, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v30, v14

    move-object/from16 v14, v26

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_12

    :cond_1f
    invoke-static {v1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9, v4, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->addPool(Ljava/util/Map;ILorg/json/JSONObject;)V

    goto :goto_12

    :cond_20
    move-object/from16 v29, v2

    :cond_21
    move-object/from16 v30, v14

    move-object/from16 v14, v26

    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v14

    move-object/from16 v4, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v14, v30

    goto :goto_11

    :cond_22
    move-object/from16 v28, v1

    :cond_23
    move-object/from16 v30, v14

    :goto_13
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_24

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v4

    rem-int/2addr v1, v4

    move-object/from16 v4, v25

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v6, 0x1

    invoke-static {v3, v0, v1, v12, v6}, Lcom/firsttouchgames/dls7/LocalCatalog25;->choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v14, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const/4 v2, 0x0

    invoke-virtual {v14, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9, v1, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->addPool(Ljava/util/Map;ILorg/json/JSONObject;)V

    goto :goto_13

    .line 56
    :cond_24
    :goto_14
    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v4, v27

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15

    :cond_25
    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "DSPls"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2c

    const-string v4, "DSPl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v5, :cond_2b

    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v14, v8, :cond_2b

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/firsttouchgames/dls7/LocalCatalog25;->copy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, v22

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_26
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, v20

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_27

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    const v5, 0xffff

    goto :goto_18

    :cond_27
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "RPl"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_29

    const/4 v11, 0x0

    :goto_17
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v11, v15, :cond_29

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    const v5, 0xffff

    invoke-virtual {v15, v10, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v3, v7}, Lcom/firsttouchgames/dls7/LocalCatalog25;->valid(Lorg/json/JSONObject;I)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v15, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_28
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    goto :goto_17

    :cond_29
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    const v5, 0xffff

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_2a
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    const v5, 0xffff

    :goto_18
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v22, v12

    move-object/from16 v20, v13

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    goto/16 :goto_16

    :cond_2b
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_2c
    const-string v2, "local_draft25"

    move-object/from16 v4, v19

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2d

    const/4 v5, 0x0

    goto :goto_19

    :cond_2d
    const-string v5, "selection"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_19
    if-eqz v5, :cond_31

    move-object/from16 v6, v24

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    :goto_1a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v14, v10, :cond_30

    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v3, v10}, Lcom/firsttouchgames/dls7/LocalCatalog25;->active(Lorg/json/JSONObject;I)Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    goto :goto_1b

    :cond_2e
    const/4 v11, 0x0

    goto :goto_1c

    :cond_2f
    :goto_1b
    const/4 v11, 0x0

    invoke-static {v3, v0, v10, v9, v11}, Lcom/firsttouchgames/dls7/LocalCatalog25;->choose(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/util/Set;Z)I

    move-result v10

    :goto_1c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    :cond_30
    const/4 v11, 0x0

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "receipts"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d

    :cond_31
    const/4 v11, 0x0

    .line 60
    :goto_1d
    invoke-static {v1, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->prune(Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "recoveries26"

    const-string v1, "released_players26"

    const-string v2, "recovery26"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move v13, v11

    :goto_1e
    const/4 v1, 0x3

    if-ge v13, v1, :cond_33

    aget-object v1, v0, v13

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->prune(Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_32
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 62
    :cond_33
    const-string v0, "receipts"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/firsttouchgames/dls7/LocalCatalog25;->bad(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_20

    .line 63
    :cond_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    invoke-static/range {p1 .. p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "owned_replacements"

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "local_catalog25"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v4
.end method

.method static needs(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2

    .line 6
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->version(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "local_catalog25"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static prune(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    instance-of v0, p0, Lorg/json/JSONObject;

    const v1, 0xffff

    const-string v2, "PID"

    if-eqz v0, :cond_2

    check-cast p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/firsttouchgames/dls7/LocalCatalog25;->valid(Lorg/json/JSONObject;I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v4, p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->prune(Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 33
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/firsttouchgames/dls7/LocalCatalog25;->valid(Lorg/json/JSONObject;I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static {v3, p1}, Lcom/firsttouchgames/dls7/LocalCatalog25;->prune(Ljava/lang/Object;Lorg/json/JSONObject;)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 34
    :cond_4
    return-void
.end method

.method static valid(Lorg/json/JSONObject;I)Z
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static version(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 5
    const-string v0, "source_dataset25"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, "sha256"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
