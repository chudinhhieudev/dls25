.class public final Lcom/google/ads/android/projectpam/ecpm/b;
.super Ljava/lang/Object;
.source "RangeMapper.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LN2/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LO2/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:LM2/a;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Lt5/j;


# direct methods
.method public constructor <init>(Lcom/firsttouchgames/ftt/FTTMainActivity;LM2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/ads/android/projectpam/ecpm/b;->b:LM2/a;

    .line 12
    .line 13
    const-string p2, "AdMobPAMEcpmRangeCache"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/ads/android/projectpam/ecpm/b;->c:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    new-instance p1, Lt5/k;

    .line 23
    .line 24
    invoke-direct {p1}, Lt5/k;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lt5/k;->a()Lt5/j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/ads/android/projectpam/ecpm/b;->d:Lt5/j;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Double;LN2/a;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "AdMobPAMEcpmRangeCache"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/ads/android/projectpam/ecpm/b;->c:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Lcom/google/ads/android/projectpam/ecpm/b$a;

    .line 19
    .line 20
    invoke-direct {v2}, LA5/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/ads/android/projectpam/ecpm/b;->d:Lt5/j;

    .line 24
    .line 25
    iget-object v2, v2, LA5/a;->b:Ljava/lang/reflect/Type;

    .line 26
    .line 27
    invoke-virtual {v3, v0, v2}, Lt5/j;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/util/Map;

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, LO2/b;

    .line 86
    .line 87
    iget-wide v4, v4, LO2/b;->a:D

    .line 88
    .line 89
    cmpl-double v2, v2, v4

    .line 90
    .line 91
    if-ltz v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, LO2/b;

    .line 102
    .line 103
    iget-wide v4, v4, LO2/b;->b:D

    .line 104
    .line 105
    cmpg-double v2, v2, v4

    .line 106
    .line 107
    if-gez v2, :cond_1

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/String;

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_2
    const-string p1, "AdMobPAMPlugin"

    .line 117
    .line 118
    const-string p2, "No matching eCPM range found. Using default/fallback range."

    .line 119
    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/google/ads/android/projectpam/ecpm/b;->b:LM2/a;

    .line 124
    .line 125
    iget-object p2, p1, LM2/a;->c:Ljava/lang/String;

    .line 126
    .line 127
    if-nez p2, :cond_3

    .line 128
    .line 129
    const-string p2, "fallback_key_value"

    .line 130
    .line 131
    iget-object v0, p1, LM2/a;->a:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    iput-object p2, p1, LM2/a;->c:Ljava/lang/String;

    .line 138
    .line 139
    :cond_3
    iget-object p1, p1, LM2/a;->c:Ljava/lang/String;

    .line 140
    .line 141
    return-object p1
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v7, "min"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    const-string v9, "max"

    .line 58
    .line 59
    const-string v10, "infinity"

    .line 60
    .line 61
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_0

    .line 70
    .line 71
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_0
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    :goto_2
    new-instance v6, LO2/b;

    .line 79
    .line 80
    invoke-direct {v6, v7, v8, v9, v10}, LO2/b;-><init>(DD)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 88
    .line 89
    invoke-static {v1}, LN2/a;->valueOf(Ljava/lang/String;)LN2/a;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/google/ads/android/projectpam/ecpm/b;->d:Lt5/j;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->a:Ljava/util/Map;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lt5/j;->f(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/google/ads/android/projectpam/ecpm/b;->c:Landroid/content/SharedPreferences;

    .line 106
    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "AdMobPAMEcpmRangeCache"

    .line 112
    .line 113
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    .line 119
    .line 120
    return-void
.end method
