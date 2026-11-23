.class public final Lcom/firsttouchgames/ftt/p;
.super Ljava/lang/Object;
.source "FTTPushNotifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Intent;

.field public final synthetic g:Landroid/app/PendingIntent;

.field public final synthetic h:I

.field public final synthetic i:Lcom/firsttouchgames/ftt/FTTPushNotifications;


# direct methods
.method public constructor <init>(Lcom/firsttouchgames/ftt/FTTPushNotifications;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/firsttouchgames/ftt/p;->i:Lcom/firsttouchgames/ftt/FTTPushNotifications;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/firsttouchgames/ftt/p;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/firsttouchgames/ftt/p;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/firsttouchgames/ftt/p;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/firsttouchgames/ftt/p;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/firsttouchgames/ftt/p;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/firsttouchgames/ftt/p;->f:Landroid/content/Intent;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/firsttouchgames/ftt/p;->g:Landroid/app/PendingIntent;

    .line 19
    .line 20
    iput p9, p0, Lcom/firsttouchgames/ftt/p;->h:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/firsttouchgames/ftt/p;->e:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/firsttouchgames/ftt/p;->b:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/firsttouchgames/ftt/p;->i:Lcom/firsttouchgames/ftt/FTTPushNotifications;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/firsttouchgames/ftt/FTTPushNotifications;->i:Lcom/firsttouchgames/ftt/FTTPushNotifications$d;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/firsttouchgames/ftt/FTTPushNotifications$d;->e:Landroid/graphics/Bitmap;

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/firsttouchgames/ftt/p;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->route(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    :try_start_1
    new-instance v5, Landroidx/core/app/NotificationCompat$j;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/firsttouchgames/ftt/p;->c:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v1, v6}, Landroidx/core/app/NotificationCompat$j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .line 52
    iget-object v6, p0, Lcom/firsttouchgames/ftt/p;->d:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$j;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    iput-object v6, v5, Landroidx/core/app/NotificationCompat$j;->e:Ljava/lang/CharSequence;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/firsttouchgames/ftt/FTTPushNotifications;->i:Lcom/firsttouchgames/ftt/FTTPushNotifications$d;

    .line 61
    .line 62
    iget v2, v2, Lcom/firsttouchgames/ftt/FTTPushNotifications$d;->d:I

    .line 63
    .line 64
    iget-object v6, v5, Landroidx/core/app/NotificationCompat$j;->s:Landroid/app/Notification;

    .line 65
    .line 66
    iput v2, v6, Landroid/app/Notification;->icon:I

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$j;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iput-object v2, v5, Landroidx/core/app/NotificationCompat$j;->f:Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$j;->d(Landroid/graphics/Bitmap;)V

    .line 76
    const/4 v2, -0x1

    .line 77
    .line 78
    iput v2, v5, Landroidx/core/app/NotificationCompat$j;->j:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$j;->c(Z)V

    .line 82
    .line 83
    new-instance v2, Landroidx/core/app/NotificationCompat$g;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$l;-><init>()V

    .line 87
    const/4 v6, 0x0

    .line 88
    .line 89
    if-nez v3, :cond_0

    .line 90
    move-object v7, v6

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_0
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    .line 94
    .line 95
    .line 96
    invoke-direct {v7, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 97
    .line 98
    iput-object v3, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 99
    .line 100
    :goto_1
    iput-object v7, v2, Landroidx/core/app/NotificationCompat$g;->e:Landroidx/core/graphics/drawable/IconCompat;

    .line 101
    .line 102
    iput-object v6, v2, Landroidx/core/app/NotificationCompat$g;->f:Landroidx/core/graphics/drawable/IconCompat;

    .line 103
    .line 104
    iput-boolean v4, v2, Landroidx/core/app/NotificationCompat$g;->g:Z

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$j;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, v5, Landroidx/core/app/NotificationCompat$j;->f:Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$j;->e(Landroidx/core/app/NotificationCompat$l;)V

    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    iget-object v2, p0, Lcom/firsttouchgames/ftt/p;->f:Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    if-nez v3, :cond_1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    :cond_1
    if-eqz v3, :cond_2

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 141
    .line 142
    .line 143
    :try_start_2
    invoke-static {v1, v3}, LH0/l;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    :goto_2
    if-eqz v3, :cond_2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v3}, LH0/l;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    move-result-object v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    goto :goto_2

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .line 161
    :try_start_3
    const-string v1, "TaskStackBuilder"

    .line 162
    .line 163
    const-string v2, "Bad ComponentName while traversing activity parent metadata"

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    throw v1

    .line 173
    .line 174
    .line 175
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    iget-object v0, p0, Lcom/firsttouchgames/ftt/p;->g:Landroid/app/PendingIntent;

    .line 178
    .line 179
    iput-object v0, v5, Landroidx/core/app/NotificationCompat$j;->g:Landroid/app/PendingIntent;

    .line 180
    .line 181
    const-string v0, "notification"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    check-cast v0, Landroid/app/NotificationManager;

    .line 188
    .line 189
    iget v1, p0, Lcom/firsttouchgames/ftt/p;->h:I

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$j;->a()Landroid/app/Notification;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    :catch_2
    return-void
.end method
