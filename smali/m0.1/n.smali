.class public abstract Lm0/n;
.super Lk0/x;
.source "LayoutNodeWrapper.kt"

# interfaces
.implements Lk0/m;
.implements Lk0/i;
.implements Lm0/y;
.implements Le7/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/n$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk0/x;",
        "Lk0/m;",
        "Lk0/i;",
        "Lm0/y;",
        "Le7/l<",
        "LX/y;",
        "LQ6/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lm0/n$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:Lm0/n$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final x:Lm0/n$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:LX/S;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Lm0/n$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lm0/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lm0/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z

.field public h:Le7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/l<",
            "-",
            "LX/H;",
            "LQ6/z;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:LD0/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:LD0/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:F

.field public l:Z

.field public m:Lk0/o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/util/LinkedHashMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:J

.field public p:F

.field public q:Z

.field public r:LW/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:[Lm0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lm0/l<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lm0/n$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:Lm0/w;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lm0/n$d;->a:Lm0/n$d;

    .line 2
    .line 3
    sput-object v0, Lm0/n;->w:Lm0/n$d;

    .line 4
    .line 5
    sget-object v0, Lm0/n$c;->a:Lm0/n$c;

    .line 6
    .line 7
    sput-object v0, Lm0/n;->x:Lm0/n$c;

    .line 8
    .line 9
    new-instance v0, LX/S;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v1, v0, LX/S;->a:F

    .line 17
    .line 18
    iput v1, v0, LX/S;->b:F

    .line 19
    .line 20
    iput v1, v0, LX/S;->c:F

    .line 21
    .line 22
    sget-wide v2, LX/I;->a:J

    .line 23
    .line 24
    iput-wide v2, v0, LX/S;->e:J

    .line 25
    .line 26
    iput-wide v2, v0, LX/S;->f:J

    .line 27
    .line 28
    const/high16 v2, 0x41000000    # 8.0f

    .line 29
    .line 30
    iput v2, v0, LX/S;->g:F

    .line 31
    .line 32
    sget-wide v2, LX/a0;->b:J

    .line 33
    .line 34
    iput-wide v2, v0, LX/S;->h:J

    .line 35
    .line 36
    sget-object v2, LX/P;->a:LX/P$a;

    .line 37
    .line 38
    iput-object v2, v0, LX/S;->i:LX/U;

    .line 39
    .line 40
    new-instance v2, LD0/e;

    .line 41
    .line 42
    invoke-direct {v2, v1, v1}, LD0/e;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    iput-object v2, v0, LX/S;->k:LD0/d;

    .line 46
    .line 47
    sput-object v0, Lm0/n;->y:LX/S;

    .line 48
    .line 49
    new-instance v0, Lm0/n$a;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lm0/n;->z:Lm0/n$a;

    .line 55
    .line 56
    new-instance v0, Lm0/n$b;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lm0/n;->A:Lm0/n$b;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Lm0/h;)V
    .locals 2
    .param p1    # Lm0/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lk0/x;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lm0/n;->e:Lm0/h;

    .line 10
    .line 11
    iget-object v0, p1, Lm0/h;->o:LD0/d;

    .line 12
    .line 13
    iput-object v0, p0, Lm0/n;->i:LD0/d;

    .line 14
    .line 15
    iget-object p1, p1, Lm0/h;->q:LD0/m;

    .line 16
    .line 17
    iput-object p1, p0, Lm0/n;->j:LD0/m;

    .line 18
    .line 19
    const p1, 0x3f4ccccd    # 0.8f

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lm0/n;->k:F

    .line 23
    .line 24
    sget-wide v0, LD0/j;->b:J

    .line 25
    .line 26
    iput-wide v0, p0, Lm0/n;->o:J

    .line 27
    .line 28
    const/4 p1, 0x6

    .line 29
    new-array p1, p1, [Lm0/l;

    .line 30
    .line 31
    iput-object p1, p0, Lm0/n;->s:[Lm0/l;

    .line 32
    .line 33
    new-instance p1, Lm0/n$g;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lm0/n$g;-><init>(Lm0/n;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lm0/n;->t:Lm0/n$g;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lm0/w;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lm0/n;->f:Lm0/n;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lm0/n;->A0()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final B0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lm0/n;->k:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lm0/n;->f:Lm0/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lm0/n;->B0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final C0(Le7/l;)V
    .locals 7
    .param p1    # Le7/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/l<",
            "-",
            "LX/H;",
            "LQ6/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/n;->h:Le7/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lm0/n;->e:Lm0/h;

    .line 6
    .line 7
    if-ne v0, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lm0/n;->i:LD0/d;

    .line 10
    .line 11
    iget-object v4, v3, Lm0/h;->o:LD0/d;

    .line 12
    .line 13
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lm0/n;->j:LD0/m;

    .line 20
    .line 21
    iget-object v4, v3, Lm0/h;->q:LD0/m;

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v0, v2

    .line 29
    :goto_1
    iput-object p1, p0, Lm0/n;->h:Le7/l;

    .line 30
    .line 31
    iget-object v4, v3, Lm0/h;->o:LD0/d;

    .line 32
    .line 33
    iput-object v4, p0, Lm0/n;->i:LD0/d;

    .line 34
    .line 35
    iget-object v4, v3, Lm0/h;->q:LD0/m;

    .line 36
    .line 37
    iput-object v4, p0, Lm0/n;->j:LD0/m;

    .line 38
    .line 39
    invoke-virtual {p0}, Lm0/n;->n()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    iget-object v6, p0, Lm0/n;->t:Lm0/n$g;

    .line 45
    .line 46
    if-eqz v4, :cond_d

    .line 47
    .line 48
    if-eqz p1, :cond_d

    .line 49
    .line 50
    iget-object p1, p0, Lm0/n;->v:Lm0/w;

    .line 51
    .line 52
    if-nez p1, :cond_b

    .line 53
    .line 54
    invoke-static {v3}, Lm0/m;->a(Lm0/h;)Lm0/x;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 59
    .line 60
    const-string v0, "invalidateParentLayer"

    .line 61
    .line 62
    invoke-static {v6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;->h0:Landroidx/compose/ui/platform/T0;

    .line 66
    .line 67
    iget-object v4, v0, Landroidx/compose/ui/platform/T0;->b:Ljava/lang/ref/ReferenceQueue;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v0, v0, Landroidx/compose/ui/platform/T0;->a:LI/e;

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v4}, LI/e;->j(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    if-nez v4, :cond_2

    .line 81
    .line 82
    :cond_4
    iget v4, v0, LI/e;->c:I

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    add-int/lit8 v4, v4, -0x1

    .line 87
    .line 88
    invoke-virtual {v0, v4}, LI/e;->l(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/ref/Reference;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    move-object v5, v4

    .line 101
    :cond_5
    check-cast v5, Lm0/w;

    .line 102
    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    invoke-interface {v5, p0, v6}, Lm0/w;->b(Lm0/n;Lm0/n$g;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    iget-boolean v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;->N:Z

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    :try_start_0
    new-instance v5, Landroidx/compose/ui/platform/z0;

    .line 120
    .line 121
    invoke-direct {v5, p1, p0, v6}, Landroidx/compose/ui/platform/z0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lm0/n;Lm0/n$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    iput-boolean v1, p1, Landroidx/compose/ui/platform/AndroidComposeView;->N:Z

    .line 126
    .line 127
    :cond_7
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;->B:Landroidx/compose/ui/platform/g0;

    .line 128
    .line 129
    if-nez v0, :cond_a

    .line 130
    .line 131
    sget-boolean v0, Landroidx/compose/ui/platform/O0;->q:Z

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    new-instance v0, Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Landroidx/compose/ui/platform/O0$c;->a(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    sget-boolean v0, Landroidx/compose/ui/platform/O0;->r:Z

    .line 148
    .line 149
    const-string v1, "context"

    .line 150
    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    new-instance v0, Landroidx/compose/ui/platform/g0;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v4, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v4}, Landroidx/compose/ui/platform/g0;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_9
    new-instance v0, Landroidx/compose/ui/platform/P0;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v4}, Landroidx/compose/ui/platform/g0;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    iput-object v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;->B:Landroidx/compose/ui/platform/g0;

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    :cond_a
    new-instance v5, Landroidx/compose/ui/platform/O0;

    .line 184
    .line 185
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;->B:Landroidx/compose/ui/platform/g0;

    .line 186
    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {v5, p1, v0, p0, v6}, Landroidx/compose/ui/platform/O0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/g0;Lm0/n;Lm0/n$g;)V

    .line 191
    .line 192
    .line 193
    :goto_3
    iget-wide v0, p0, Lk0/x;->c:J

    .line 194
    .line 195
    invoke-interface {v5, v0, v1}, Lm0/w;->d(J)V

    .line 196
    .line 197
    .line 198
    iget-wide v0, p0, Lm0/n;->o:J

    .line 199
    .line 200
    invoke-interface {v5, v0, v1}, Lm0/w;->h(J)V

    .line 201
    .line 202
    .line 203
    iput-object v5, p0, Lm0/n;->v:Lm0/w;

    .line 204
    .line 205
    invoke-virtual {p0}, Lm0/n;->K0()V

    .line 206
    .line 207
    .line 208
    iput-boolean v2, v3, Lm0/h;->F:Z

    .line 209
    .line 210
    invoke-virtual {v6}, Lm0/n$g;->invoke()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_b
    if-eqz v0, :cond_c

    .line 215
    .line 216
    invoke-virtual {p0}, Lm0/n;->K0()V

    .line 217
    .line 218
    .line 219
    :cond_c
    return-void

    .line 220
    :cond_d
    iget-object p1, p0, Lm0/n;->v:Lm0/w;

    .line 221
    .line 222
    if-eqz p1, :cond_e

    .line 223
    .line 224
    invoke-interface {p1}, Lm0/w;->destroy()V

    .line 225
    .line 226
    .line 227
    iput-boolean v2, v3, Lm0/h;->F:Z

    .line 228
    .line 229
    invoke-virtual {v6}, Lm0/n$g;->invoke()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lm0/n;->n()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_e

    .line 237
    .line 238
    iget-object p1, v3, Lm0/h;->g:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 239
    .line 240
    if-eqz p1, :cond_e

    .line 241
    .line 242
    invoke-virtual {p1, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->t(Lm0/h;)V

    .line 243
    .line 244
    .line 245
    :cond_e
    iput-object v5, p0, Lm0/n;->v:Lm0/w;

    .line 246
    .line 247
    iput-boolean v1, p0, Lm0/n;->u:Z

    .line 248
    .line 249
    return-void
.end method

.method public final D0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1}, LD0/o;->k([Lm0/l;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    sget-object v2, LQ/n;->b:LH/d1;

    .line 11
    .line 12
    invoke-virtual {v2}, LH/d1;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, LQ/h;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v2, v4, v3}, LQ/n;->g(LQ/h;Le7/l;Z)LQ/h;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :try_start_0
    invoke-virtual {v2}, LQ/h;->i()LQ/h;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    aget-object v0, v0, v1

    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lm0/H;

    .line 34
    .line 35
    iget-object v1, v1, Lm0/l;->b:LS/i$b;

    .line 36
    .line 37
    check-cast v1, Lk0/u;

    .line 38
    .line 39
    iget-wide v4, p0, Lk0/x;->c:J

    .line 40
    .line 41
    invoke-interface {v1, v4, v5}, Lk0/u;->p(J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lm0/l;->c:Lm0/l;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    sget-object v0, LQ6/z;->a:LQ6/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    :try_start_2
    invoke-static {v3}, LQ/h;->o(LQ/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, LQ/h;->c()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    :try_start_3
    invoke-static {v3}, LQ/h;->o(LQ/h;)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    invoke-virtual {v2}, LQ/h;->c()V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    return-void
.end method

.method public E0(LX/y;)V
    .locals 1
    .param p1    # LX/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lm0/n;->n0(LX/y;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final F0(LW/c;ZZ)V
    .locals 10
    .param p1    # LW/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 v3, 0x20

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v4, p0, Lm0/n;->g:Z

    .line 13
    .line 14
    if-eqz v4, :cond_2

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lm0/n;->u0()J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    invoke-static {p2, p3}, LW/i;->d(J)F

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/high16 v5, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v4, v5

    .line 29
    invoke-static {p2, p3}, LW/i;->b(J)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    div-float/2addr p2, v5

    .line 34
    neg-float p3, v4

    .line 35
    neg-float v5, p2

    .line 36
    iget-wide v6, p0, Lk0/x;->c:J

    .line 37
    .line 38
    shr-long v8, v6, v3

    .line 39
    .line 40
    long-to-int v8, v8

    .line 41
    int-to-float v8, v8

    .line 42
    add-float/2addr v8, v4

    .line 43
    and-long/2addr v6, v1

    .line 44
    long-to-int v4, v6

    .line 45
    int-to-float v4, v4

    .line 46
    add-float/2addr v4, p2

    .line 47
    invoke-virtual {p1, p3, v5, v8, v4}, LW/c;->a(FFFF)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-wide p2, p0, Lk0/x;->c:J

    .line 54
    .line 55
    shr-long v4, p2, v3

    .line 56
    .line 57
    long-to-int v4, v4

    .line 58
    int-to-float v4, v4

    .line 59
    and-long/2addr p2, v1

    .line 60
    long-to-int p2, p2

    .line 61
    int-to-float p2, p2

    .line 62
    const/4 p3, 0x0

    .line 63
    invoke-virtual {p1, p3, p3, v4, p2}, LW/c;->a(FFFF)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1}, LW/c;->b()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const/4 p2, 0x0

    .line 74
    invoke-interface {v0, p1, p2}, Lm0/w;->a(LW/c;Z)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-wide p2, p0, Lm0/n;->o:J

    .line 78
    .line 79
    sget v0, LD0/j;->c:I

    .line 80
    .line 81
    shr-long v3, p2, v3

    .line 82
    .line 83
    long-to-int v0, v3

    .line 84
    iget v3, p1, LW/c;->a:F

    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    add-float/2addr v3, v0

    .line 88
    iput v3, p1, LW/c;->a:F

    .line 89
    .line 90
    iget v3, p1, LW/c;->c:F

    .line 91
    .line 92
    add-float/2addr v3, v0

    .line 93
    iput v3, p1, LW/c;->c:F

    .line 94
    .line 95
    and-long/2addr p2, v1

    .line 96
    long-to-int p2, p2

    .line 97
    iget p3, p1, LW/c;->b:F

    .line 98
    .line 99
    int-to-float p2, p2

    .line 100
    add-float/2addr p3, p2

    .line 101
    iput p3, p1, LW/c;->b:F

    .line 102
    .line 103
    iget p3, p1, LW/c;->d:F

    .line 104
    .line 105
    add-float/2addr p3, p2

    .line 106
    iput p3, p1, LW/c;->d:F

    .line 107
    .line 108
    return-void
.end method

.method public final G0(Lk0/o;)V
    .locals 7
    .param p1    # Lk0/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/n;->m:Lk0/o;

    .line 7
    .line 8
    if-eq p1, v0, :cond_c

    .line 9
    .line 10
    iput-object p1, p0, Lm0/n;->m:Lk0/o;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iget-object v2, p0, Lm0/n;->e:Lm0/h;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lk0/o;->c()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0}, Lk0/o;->c()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lk0/o;->b()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Lk0/o;->b()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eq v3, v0, :cond_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lk0/o;->c()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Lk0/o;->b()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lm0/n;->v:Lm0/w;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-static {v0, v3}, LD0/l;->a(II)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-interface {v4, v5, v6}, Lm0/w;->d(J)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v4, p0, Lm0/n;->f:Lm0/n;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4}, Lm0/n;->A0()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object v4, v2, Lm0/h;->g:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->t(Lm0/h;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {v0, v3}, LD0/l;->a(II)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    iget-wide v5, p0, Lk0/x;->c:J

    .line 76
    .line 77
    invoke-static {v5, v6, v3, v4}, LD0/k;->a(JJ)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iput-wide v3, p0, Lk0/x;->c:J

    .line 84
    .line 85
    invoke-virtual {p0}, Lk0/x;->X()V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    aget-object v0, v0, v3

    .line 92
    .line 93
    :goto_1
    if-eqz v0, :cond_5

    .line 94
    .line 95
    move-object v3, v0

    .line 96
    check-cast v3, Lm0/d;

    .line 97
    .line 98
    iput-boolean v1, v3, Lm0/d;->g:Z

    .line 99
    .line 100
    iget-object v0, v0, Lm0/l;->c:Lm0/l;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget-object v0, p0, Lm0/n;->n:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    :cond_6
    invoke-virtual {p1}, Lk0/o;->a()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_c

    .line 122
    .line 123
    :cond_7
    invoke-virtual {p1}, Lk0/o;->a()Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v3, p0, Lm0/n;->n:Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    iget-object v0, v0, Lm0/n;->e:Lm0/h;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    const/4 v0, 0x0

    .line 145
    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    invoke-virtual {v2}, Lm0/h;->p()Lm0/h;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    invoke-virtual {v0}, Lm0/h;->B()V

    .line 158
    .line 159
    .line 160
    :cond_9
    iget-object v0, v2, Lm0/h;->s:Lm0/j;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_a
    invoke-virtual {v2}, Lm0/h;->B()V

    .line 167
    .line 168
    .line 169
    :goto_3
    iget-object v0, v2, Lm0/h;->s:Lm0/j;

    .line 170
    .line 171
    iput-boolean v1, v0, Lm0/j;->b:Z

    .line 172
    .line 173
    iget-object v0, p0, Lm0/n;->n:Ljava/util/LinkedHashMap;

    .line 174
    .line 175
    if-nez v0, :cond_b

    .line 176
    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lm0/n;->n:Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lk0/o;->a()Ljava/util/Map;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    return-void
.end method

.method public final H0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    check-cast v0, Lm0/E;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lm0/E;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lm0/n;->H0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    :goto_0
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public final I0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm0/l<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "LS/i;",
            ">(TT;",
            "Lm0/n$e<",
            "TT;TC;TM;>;J",
            "Lm0/e<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object v4, p5

    .line 7
    move v5, p6

    .line 8
    move/from16 v6, p7

    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Lm0/n;->z0(Lm0/n$e;JLm0/e;ZZ)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p2, p1}, Lm0/n$e;->a(Lm0/l;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lm0/l;->c:Lm0/l;

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-wide v3, p3

    .line 23
    move-object v5, p5

    .line 24
    move v6, p6

    .line 25
    move/from16 v7, p7

    .line 26
    .line 27
    move/from16 v8, p8

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v8}, Lm0/n;->I0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final J0(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, p2, v1}, Lm0/w;->c(JZ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    :cond_0
    iget-wide v0, p0, Lm0/n;->o:J

    .line 11
    .line 12
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sget v3, LD0/j;->c:I

    .line 17
    .line 18
    const/16 v3, 0x20

    .line 19
    .line 20
    shr-long v3, v0, v3

    .line 21
    .line 22
    long-to-int v3, v3

    .line 23
    int-to-float v3, v3

    .line 24
    add-float/2addr v2, v3

    .line 25
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-wide v3, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v0, v3

    .line 35
    long-to-int p2, v0

    .line 36
    int-to-float p2, p2

    .line 37
    add-float/2addr p1, p2

    .line 38
    invoke-static {v2, p1}, LN/d;->f(FF)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    return-wide p1
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final K0()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm0/n;->v:Lm0/w;

    .line 4
    .line 5
    sget-object v2, Lm0/n;->y:LX/S;

    .line 6
    .line 7
    iget-object v3, v0, Lm0/n;->e:Lm0/h;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v4, v0, Lm0/n;->h:Le7/l;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const/high16 v5, 0x3f800000    # 1.0f

    .line 16
    .line 17
    iput v5, v2, LX/S;->a:F

    .line 18
    .line 19
    iput v5, v2, LX/S;->b:F

    .line 20
    .line 21
    iput v5, v2, LX/S;->c:F

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    iput v5, v2, LX/S;->d:F

    .line 25
    .line 26
    sget-wide v5, LX/I;->a:J

    .line 27
    .line 28
    iput-wide v5, v2, LX/S;->e:J

    .line 29
    .line 30
    iput-wide v5, v2, LX/S;->f:J

    .line 31
    .line 32
    const/high16 v5, 0x41000000    # 8.0f

    .line 33
    .line 34
    iput v5, v2, LX/S;->g:F

    .line 35
    .line 36
    sget-wide v5, LX/a0;->b:J

    .line 37
    .line 38
    iput-wide v5, v2, LX/S;->h:J

    .line 39
    .line 40
    sget-object v5, LX/P;->a:LX/P$a;

    .line 41
    .line 42
    iput-object v5, v2, LX/S;->i:LX/U;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    iput-boolean v5, v2, LX/S;->j:Z

    .line 46
    .line 47
    iget-object v5, v3, Lm0/h;->o:LD0/d;

    .line 48
    .line 49
    const-string v6, "<set-?>"

    .line 50
    .line 51
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v5, v2, LX/S;->k:LD0/d;

    .line 55
    .line 56
    invoke-static {v3}, Lm0/m;->a(Lm0/h;)Lm0/x;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v5}, Lm0/x;->getSnapshotObserver()Lm0/D;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    new-instance v6, Lm0/n$h;

    .line 65
    .line 66
    invoke-direct {v6, v4}, Lm0/n$h;-><init>(Le7/l;)V

    .line 67
    .line 68
    .line 69
    sget-object v4, Lm0/n;->w:Lm0/n$d;

    .line 70
    .line 71
    invoke-virtual {v5, v0, v4, v6}, Lm0/D;->a(Lm0/y;Le7/l;Le7/a;)V

    .line 72
    .line 73
    .line 74
    iget v4, v2, LX/S;->a:F

    .line 75
    .line 76
    iget v5, v2, LX/S;->b:F

    .line 77
    .line 78
    move v6, v4

    .line 79
    iget v4, v2, LX/S;->c:F

    .line 80
    .line 81
    move v7, v5

    .line 82
    iget v5, v2, LX/S;->d:F

    .line 83
    .line 84
    iget-wide v11, v2, LX/S;->e:J

    .line 85
    .line 86
    iget-wide v13, v2, LX/S;->f:J

    .line 87
    .line 88
    move v8, v6

    .line 89
    iget v6, v2, LX/S;->g:F

    .line 90
    .line 91
    move v10, v7

    .line 92
    move v9, v8

    .line 93
    iget-wide v7, v2, LX/S;->h:J

    .line 94
    .line 95
    move v15, v9

    .line 96
    iget-object v9, v2, LX/S;->i:LX/U;

    .line 97
    .line 98
    move/from16 v16, v10

    .line 99
    .line 100
    iget-boolean v10, v2, LX/S;->j:Z

    .line 101
    .line 102
    move-object/from16 v17, v2

    .line 103
    .line 104
    move v2, v15

    .line 105
    iget-object v15, v3, Lm0/h;->q:LD0/m;

    .line 106
    .line 107
    move-object/from16 v18, v1

    .line 108
    .line 109
    iget-object v1, v3, Lm0/h;->o:LD0/d;

    .line 110
    .line 111
    move-object/from16 v19, v3

    .line 112
    .line 113
    move/from16 v3, v16

    .line 114
    .line 115
    move-object/from16 v0, v17

    .line 116
    .line 117
    move-object/from16 v16, v1

    .line 118
    .line 119
    move-object/from16 v1, v18

    .line 120
    .line 121
    invoke-interface/range {v1 .. v16}, Lm0/w;->e(FFFFFJLX/U;ZJJLD0/m;LD0/d;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v1, v0, LX/S;->j:Z

    .line 125
    .line 126
    move-object/from16 v2, p0

    .line 127
    .line 128
    iput-boolean v1, v2, Lm0/n;->g:Z

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    move-object v2, v0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "Required value was null."

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_1
    move-object/from16 v19, v2

    .line 141
    .line 142
    move-object v2, v0

    .line 143
    move-object/from16 v0, v19

    .line 144
    .line 145
    move-object/from16 v19, v3

    .line 146
    .line 147
    iget-object v1, v2, Lm0/n;->h:Le7/l;

    .line 148
    .line 149
    if-nez v1, :cond_3

    .line 150
    .line 151
    :goto_0
    iget v0, v0, LX/S;->c:F

    .line 152
    .line 153
    iput v0, v2, Lm0/n;->k:F

    .line 154
    .line 155
    move-object/from16 v0, v19

    .line 156
    .line 157
    iget-object v1, v0, Lm0/h;->g:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 158
    .line 159
    if-eqz v1, :cond_2

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->t(Lm0/h;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    return-void

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v1, "Failed requirement."

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0
.end method

.method public final L0(J)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-boolean v1, p0, Lm0/n;->g:Z

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, p1, p2}, Lm0/w;->f(J)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final O(Lk0/i;Z)LW/e;
    .locals 7
    .param p1    # Lk0/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sourceCoordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lm0/n;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {p1}, Lk0/i;->n()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lm0/n;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lm0/n;->p0(Lm0/n;)Lm0/n;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lm0/n;->r:LW/c;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, LW/c;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput v3, v2, LW/c;->a:F

    .line 36
    .line 37
    iput v3, v2, LW/c;->b:F

    .line 38
    .line 39
    iput v3, v2, LW/c;->c:F

    .line 40
    .line 41
    iput v3, v2, LW/c;->d:F

    .line 42
    .line 43
    iput-object v2, p0, Lm0/n;->r:LW/c;

    .line 44
    .line 45
    :cond_0
    iput v3, v2, LW/c;->a:F

    .line 46
    .line 47
    iput v3, v2, LW/c;->b:F

    .line 48
    .line 49
    invoke-interface {p1}, Lk0/i;->a()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    shr-long/2addr v3, v5

    .line 56
    long-to-int v3, v3

    .line 57
    int-to-float v3, v3

    .line 58
    iput v3, v2, LW/c;->c:F

    .line 59
    .line 60
    invoke-interface {p1}, Lk0/i;->a()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    const-wide v5, 0xffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    and-long/2addr v3, v5

    .line 70
    long-to-int p1, v3

    .line 71
    int-to-float p1, p1

    .line 72
    iput p1, v2, LW/c;->d:F

    .line 73
    .line 74
    :goto_0
    if-eq v0, v1, :cond_2

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {v0, v2, p2, p1}, Lm0/n;->F0(LW/c;ZZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, LW/c;->b()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    sget-object p1, LW/e;->e:LW/e;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_1
    iget-object v0, v0, Lm0/n;->f:Lm0/n;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v1, v2, p2}, Lm0/n;->g0(Lm0/n;LW/c;Z)V

    .line 96
    .line 97
    .line 98
    new-instance p1, LW/e;

    .line 99
    .line 100
    iget p2, v2, LW/c;->a:F

    .line 101
    .line 102
    iget v0, v2, LW/c;->b:F

    .line 103
    .line 104
    iget v1, v2, LW/c;->c:F

    .line 105
    .line 106
    iget v2, v2, LW/c;->d:F

    .line 107
    .line 108
    invoke-direct {p1, p2, v0, v1, v2}, LW/e;-><init>(FFFF)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "LayoutCoordinates "

    .line 115
    .line 116
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, " is not attached!"

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method

.method public final P()Lm0/n;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm0/n;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lm0/n;->e:Lm0/h;

    .line 8
    .line 9
    iget-object v0, v0, Lm0/h;->C:Lm0/v;

    .line 10
    .line 11
    iget-object v0, v0, Lm0/v;->f:Lm0/n;

    .line 12
    .line 13
    iget-object v0, v0, Lm0/n;->f:Lm0/n;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final R(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm0/n;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lm0/n;->J0(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iget-object v0, v0, Lm0/n;->f:Lm0/n;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public V(JFLe7/l;)V
    .locals 2
    .param p4    # Le7/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le7/l<",
            "-",
            "LX/H;",
            "LQ6/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4}, Lm0/n;->C0(Le7/l;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lm0/n;->o:J

    .line 5
    .line 6
    sget p4, LD0/j;->c:I

    .line 7
    .line 8
    cmp-long p4, v0, p1

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    iput-wide p1, p0, Lm0/n;->o:J

    .line 14
    .line 15
    iget-object p4, p0, Lm0/n;->v:Lm0/w;

    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    invoke-interface {p4, p1, p2}, Lm0/w;->h(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lm0/n;->f:Lm0/n;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lm0/n;->A0()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p1, p1, Lm0/n;->e:Lm0/h;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 p1, 0x0

    .line 40
    :goto_1
    iget-object p2, p0, Lm0/n;->e:Lm0/h;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2}, Lm0/h;->B()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p2}, Lm0/h;->p()Lm0/h;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Lm0/h;->B()V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_2
    iget-object p1, p2, Lm0/h;->g:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->t(Lm0/h;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    :goto_3
    iput p3, p0, Lm0/n;->p:F

    .line 69
    .line 70
    return-void
.end method

.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/x;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g0(Lm0/n;LW/c;Z)V
    .locals 6

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm0/n;->f:Lm0/n;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lm0/n;->g0(Lm0/n;LW/c;Z)V

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-wide v0, p0, Lm0/n;->o:J

    .line 12
    .line 13
    sget p1, LD0/j;->c:I

    .line 14
    .line 15
    const/16 p1, 0x20

    .line 16
    .line 17
    shr-long v2, v0, p1

    .line 18
    .line 19
    long-to-int v2, v2

    .line 20
    iget v3, p2, LW/c;->a:F

    .line 21
    .line 22
    int-to-float v2, v2

    .line 23
    sub-float/2addr v3, v2

    .line 24
    iput v3, p2, LW/c;->a:F

    .line 25
    .line 26
    iget v3, p2, LW/c;->c:F

    .line 27
    .line 28
    sub-float/2addr v3, v2

    .line 29
    iput v3, p2, LW/c;->c:F

    .line 30
    .line 31
    const-wide v2, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v2

    .line 37
    long-to-int v0, v0

    .line 38
    iget v1, p2, LW/c;->b:F

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    sub-float/2addr v1, v0

    .line 42
    iput v1, p2, LW/c;->b:F

    .line 43
    .line 44
    iget v1, p2, LW/c;->d:F

    .line 45
    .line 46
    sub-float/2addr v1, v0

    .line 47
    iput v1, p2, LW/c;->d:F

    .line 48
    .line 49
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-interface {v0, p2, v1}, Lm0/w;->a(LW/c;Z)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lm0/n;->g:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget-wide v0, p0, Lk0/x;->c:J

    .line 64
    .line 65
    shr-long v4, v0, p1

    .line 66
    .line 67
    long-to-int p1, v4

    .line 68
    int-to-float p1, p1

    .line 69
    and-long/2addr v0, v2

    .line 70
    long-to-int p3, v0

    .line 71
    int-to-float p3, p3

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p2, v0, v0, p1, p3}, LW/c;->a(FFFF)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final h0(Lm0/n;J)J
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    iget-object v0, p0, Lm0/n;->f:Lm0/n;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lm0/n;->h0(Lm0/n;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lm0/n;->q0(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lm0/n;->q0(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public final i0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm0/n;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lm0/n;->h:Le7/l;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lm0/n;->C0(Le7/l;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    :goto_1
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lm0/l;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v3, Lm0/l;->c:Lm0/l;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, LX/y;

    .line 2
    .line 3
    const-string v0, "canvas"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm0/n;->e:Lm0/h;

    .line 9
    .line 10
    iget-boolean v1, v0, Lm0/h;->t:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lm0/m;->a(Lm0/h;)Lm0/x;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lm0/x;->getSnapshotObserver()Lm0/D;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lc1/c;

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-direct {v1, v2, p0, p1}, Lc1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lm0/n;->x:Lm0/n$c;

    .line 29
    .line 30
    invoke-virtual {v0, p0, p1, v1}, Lm0/D;->a(Lm0/y;Le7/l;Le7/a;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lm0/n;->u:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lm0/n;->u:Z

    .line 39
    .line 40
    :goto_0
    sget-object p1, LQ6/z;->a:LQ6/z;

    .line 41
    .line 42
    return-object p1
.end method

.method public abstract j0(Lk0/a;)I
    .param p1    # Lk0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final k0(J)J
    .locals 5

    .line 1
    invoke-static {p1, p2}, LW/i;->d(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lk0/x;->U()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr v0, v1

    .line 11
    invoke-static {p1, p2}, LW/i;->b(J)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-wide v1, p0, Lk0/x;->c:J

    .line 16
    .line 17
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    long-to-int p2, v1

    .line 24
    int-to-float p2, p2

    .line 25
    sub-float/2addr p1, p2

    .line 26
    const/high16 p2, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, p2

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    div-float/2addr p1, p2

    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {v0, p1}, LD5/a;->a(FF)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    return-wide p1
.end method

.method public final l0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    :goto_1
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {v4}, Lm0/l;->b()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v4, Lm0/l;->c:Lm0/l;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v2, p0, Lm0/n;->l:Z

    .line 22
    .line 23
    iget-object v0, p0, Lm0/n;->h:Le7/l;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lm0/n;->C0(Le7/l;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lm0/n;->e:Lm0/h;

    .line 29
    .line 30
    invoke-virtual {v0}, Lm0/h;->p()Lm0/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lm0/h;->u()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final m0(JJ)F
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk0/x;->U()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-static {p3, p4}, LW/i;->d(J)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    const-wide v1, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    iget-wide v3, p0, Lk0/x;->c:J

    .line 20
    .line 21
    and-long/2addr v3, v1

    .line 22
    long-to-int v0, v3

    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {p3, p4}, LW/i;->b(J)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    cmpl-float v0, v0, v3

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p0, p3, p4}, Lm0/n;->k0(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p3

    .line 37
    invoke-static {p3, p4}, LW/i;->d(J)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {p3, p4}, LW/i;->b(J)F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    const/4 v3, 0x0

    .line 50
    cmpg-float v4, p4, v3

    .line 51
    .line 52
    if-gez v4, :cond_1

    .line 53
    .line 54
    neg-float p4, p4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lk0/x;->U()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    sub-float/2addr p4, v4

    .line 62
    :goto_0
    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    cmpg-float p2, p1, v3

    .line 71
    .line 72
    if-gez p2, :cond_2

    .line 73
    .line 74
    neg-float p1, p1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-wide v4, p0, Lk0/x;->c:J

    .line 77
    .line 78
    and-long/2addr v1, v4

    .line 79
    long-to-int p2, v1

    .line 80
    int-to-float p2, p2

    .line 81
    sub-float/2addr p1, p2

    .line 82
    :goto_1
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p4, p1}, LN/d;->f(FF)J

    .line 87
    .line 88
    .line 89
    move-result-wide p1

    .line 90
    cmpl-float p4, v0, v3

    .line 91
    .line 92
    if-gtz p4, :cond_3

    .line 93
    .line 94
    cmpl-float p4, p3, v3

    .line 95
    .line 96
    if-lez p4, :cond_4

    .line 97
    .line 98
    :cond_3
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    cmpg-float p4, p4, v0

    .line 103
    .line 104
    if-gtz p4, :cond_4

    .line 105
    .line 106
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    cmpg-float p3, p4, p3

    .line 111
    .line 112
    if-gtz p3, :cond_4

    .line 113
    .line 114
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    mul-float/2addr p4, p3

    .line 123
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    mul-float/2addr p1, p3

    .line 132
    add-float/2addr p1, p4

    .line 133
    return p1

    .line 134
    :cond_4
    :goto_2
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 135
    .line 136
    return p1
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm0/n;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lm0/n;->e:Lm0/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Lm0/h;->x()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Failed requirement."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lm0/n;->l:Z

    .line 23
    .line 24
    return v0
.end method

.method public final n0(LX/y;)V
    .locals 5
    .param p1    # LX/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lm0/w;->g(LX/y;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-wide v0, p0, Lm0/n;->o:J

    .line 15
    .line 16
    sget v2, LD0/j;->c:I

    .line 17
    .line 18
    const/16 v2, 0x20

    .line 19
    .line 20
    shr-long v2, v0, v2

    .line 21
    .line 22
    long-to-int v2, v2

    .line 23
    int-to-float v2, v2

    .line 24
    const-wide v3, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v0, v3

    .line 30
    long-to-int v0, v0

    .line 31
    int-to-float v0, v0

    .line 32
    invoke-interface {p1, v2, v0}, LX/y;->i(FF)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lm0/n;->s:[Lm0/l;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aget-object v1, v1, v3

    .line 39
    .line 40
    check-cast v1, Lm0/d;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lm0/n;->E0(LX/y;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1, p1}, Lm0/d;->c(LX/y;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    neg-float v1, v2

    .line 52
    neg-float v0, v0

    .line 53
    invoke-interface {p1, v1, v0}, LX/y;->i(FF)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final o0(LX/y;LX/l;)V
    .locals 7
    .param p1    # LX/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LX/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, LW/e;

    .line 12
    .line 13
    iget-wide v1, p0, Lk0/x;->c:J

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    shr-long v3, v1, v3

    .line 18
    .line 19
    long-to-int v3, v3

    .line 20
    int-to-float v3, v3

    .line 21
    const/high16 v4, 0x3f000000    # 0.5f

    .line 22
    .line 23
    sub-float/2addr v3, v4

    .line 24
    const-wide v5, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v1, v5

    .line 30
    long-to-int v1, v1

    .line 31
    int-to-float v1, v1

    .line 32
    sub-float/2addr v1, v4

    .line 33
    invoke-direct {v0, v4, v4, v3, v1}, LW/e;-><init>(FFFF)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0, p2}, LX/y;->g(LW/e;LX/l;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final p(Lm0/f;J)J
    .locals 1
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sourceCoordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lm0/n;->p0(Lm0/n;)Lm0/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Lm0/n;->J0(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    iget-object p1, p1, Lm0/n;->f:Lm0/n;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lm0/n;->h0(Lm0/n;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1
.end method

.method public final p0(Lm0/n;)Lm0/n;
    .locals 6
    .param p1    # Lm0/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lm0/n;->e:Lm0/h;

    .line 7
    .line 8
    iget-object v1, p0, Lm0/n;->e:Lm0/h;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, v1, Lm0/h;->C:Lm0/v;

    .line 13
    .line 14
    iget-object v0, v0, Lm0/v;->f:Lm0/n;

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    :goto_0
    if-eq v1, v0, :cond_0

    .line 18
    .line 19
    if-eq v1, p1, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lm0/n;->f:Lm0/n;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ne v1, p1, :cond_6

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_1
    move-object v2, v0

    .line 31
    :goto_1
    iget v3, v2, Lm0/h;->h:I

    .line 32
    .line 33
    iget v4, v1, Lm0/h;->h:I

    .line 34
    .line 35
    if-le v3, v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lm0/h;->p()Lm0/h;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v3, v1

    .line 46
    :goto_2
    iget v4, v3, Lm0/h;->h:I

    .line 47
    .line 48
    iget v5, v2, Lm0/h;->h:I

    .line 49
    .line 50
    if-le v4, v5, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Lm0/h;->p()Lm0/h;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_3
    if-eq v2, v3, :cond_5

    .line 61
    .line 62
    invoke-virtual {v2}, Lm0/h;->p()Lm0/h;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3}, Lm0/h;->p()Lm0/h;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "layouts are not part of the same hierarchy"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_5
    if-ne v3, v1, :cond_7

    .line 84
    .line 85
    :cond_6
    return-object p0

    .line 86
    :cond_7
    if-ne v2, v0, :cond_8

    .line 87
    .line 88
    :goto_4
    return-object p1

    .line 89
    :cond_8
    iget-object p1, v2, Lm0/h;->B:Lm0/f;

    .line 90
    .line 91
    return-object p1
.end method

.method public final q0(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lm0/n;->o:J

    .line 2
    .line 3
    invoke-static {p1, p2}, LW/d;->b(J)F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    sget v3, LD0/j;->c:I

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    shr-long v3, v0, v3

    .line 12
    .line 13
    long-to-int v3, v3

    .line 14
    int-to-float v3, v3

    .line 15
    sub-float/2addr v2, v3

    .line 16
    invoke-static {p1, p2}, LW/d;->c(J)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-wide v3, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v3

    .line 26
    long-to-int p2, v0

    .line 27
    int-to-float p2, p2

    .line 28
    sub-float/2addr p1, p2

    .line 29
    invoke-static {v2, p1}, LN/d;->f(FF)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    iget-object v0, p0, Lm0/n;->v:Lm0/w;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-interface {v0, p1, p2, v1}, Lm0/w;->c(JZ)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    :cond_0
    return-wide p1
.end method

.method public final r0(Lk0/a;)I
    .locals 4
    .param p1    # Lk0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "alignmentLine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/n;->m:Lk0/o;

    .line 7
    .line 8
    const/high16 v1, -0x80000000

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lm0/n;->j0(Lk0/a;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lk0/x;->S()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sget v2, LD0/j;->c:I

    .line 24
    .line 25
    const-wide v2, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v0, v2

    .line 31
    long-to-int v0, v0

    .line 32
    add-int/2addr p1, v0

    .line 33
    return p1

    .line 34
    :cond_1
    :goto_0
    return v1
.end method

.method public final s0()Lk0/o;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/n;->m:Lk0/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/n;->s:[Lm0/l;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    check-cast v0, Lm0/H;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lm0/n;->v0(Lm0/H;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public abstract t0()Lk0/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final u0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/n;->i:LD0/d;

    .line 2
    .line 3
    iget-object v1, p0, Lm0/n;->e:Lm0/h;

    .line 4
    .line 5
    iget-object v1, v1, Lm0/h;->r:Landroidx/compose/ui/platform/N0;

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/compose/ui/platform/N0;->b()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-interface {v0, v1, v2}, LD0/d;->d0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public final v0(Lm0/H;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/H<",
            "Lk0/w;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lm0/n;->t()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_1
    iget-object v0, p1, Lm0/l;->b:LS/i$b;

    .line 17
    .line 18
    check-cast v0, Lk0/w;

    .line 19
    .line 20
    invoke-virtual {p0}, Lm0/n;->t0()Lk0/p;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object p1, p1, Lm0/l;->c:Lm0/l;

    .line 25
    .line 26
    check-cast p1, Lm0/H;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lm0/n;->v0(Lm0/H;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lk0/w;->S(Lk0/p;)Lz/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public w0()Lm0/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final x0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm0/l<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "LS/i;",
            ">(TT;",
            "Lm0/n$e<",
            "TT;TC;TM;>;J",
            "Lm0/e<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object/from16 v4, p5

    .line 7
    .line 8
    move/from16 v5, p6

    .line 9
    .line 10
    move/from16 v6, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lm0/n;->z0(Lm0/n$e;JLm0/e;ZZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p2, p1}, Lm0/n$e;->d(Lm0/l;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    new-instance v0, Lm0/n$f;

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-wide v4, p3

    .line 26
    move-object/from16 v6, p5

    .line 27
    .line 28
    move/from16 v7, p6

    .line 29
    .line 30
    move/from16 v8, p7

    .line 31
    .line 32
    move/from16 v9, p8

    .line 33
    .line 34
    invoke-direct/range {v0 .. v9}, Lm0/n$f;-><init>(Lm0/n;Lm0/l;Lm0/n$e;JLm0/e;ZZF)V

    .line 35
    .line 36
    .line 37
    move-object v4, v6

    .line 38
    invoke-virtual {v4, v10, v9, v8, v0}, Lm0/e;->b(Ljava/lang/Object;FZLe7/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final y(J)J
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lm0/n;->R(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object v0, p0, Lm0/n;->e:Lm0/h;

    .line 6
    .line 7
    invoke-static {v0}, Lm0/m;->a(Lm0/h;)Lm0/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->v()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView;->I:[F

    .line 17
    .line 18
    invoke-static {v0, p1, p2}, LX/f;->b([FJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method

.method public final y0(Lm0/n$e;JLm0/e;ZZ)V
    .locals 13
    .param p1    # Lm0/n$e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lm0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm0/l<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "LS/i;",
            ">(",
            "Lm0/n$e<",
            "TT;TC;TM;>;J",
            "Lm0/e<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    move-wide v3, p2

    .line 2
    move-object/from16 v5, p4

    .line 3
    .line 4
    const-string v0, "hitTestSource"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "hitTestResult"

    .line 10
    .line 11
    invoke-static {v5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lm0/n$e;->c()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lm0/n;->s:[Lm0/l;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    invoke-virtual {p0, v3, v4}, Lm0/n;->L0(J)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    if-eqz p5, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lm0/n;->u0()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-virtual {p0, v3, v4, v7, v8}, Lm0/n;->m0(JJ)F

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget v0, v5, Lm0/e;->c:I

    .line 53
    .line 54
    invoke-static {v5}, LR6/r;->d(Ljava/util/List;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-ne v0, v7, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v8, v6}, Lo1/a;->e(FZ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    invoke-virtual {v5}, Lm0/e;->a()J

    .line 66
    .line 67
    .line 68
    move-result-wide v11

    .line 69
    invoke-static {v11, v12, v9, v10}, LD0/l;->d(JJ)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v2, v6

    .line 77
    :goto_0
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v0, p0

    .line 81
    move-object v2, p1

    .line 82
    move/from16 v6, p5

    .line 83
    .line 84
    invoke-virtual/range {v0 .. v8}, Lm0/n;->x0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :cond_3
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p6}, Lm0/n;->z0(Lm0/n$e;JLm0/e;ZZ)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-static/range {p2 .. p3}, LW/d;->b(J)F

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static/range {p2 .. p3}, LW/d;->c(J)F

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v7, 0x0

    .line 103
    cmpl-float v8, v4, v7

    .line 104
    .line 105
    if-ltz v8, :cond_5

    .line 106
    .line 107
    cmpl-float v7, v5, v7

    .line 108
    .line 109
    if-ltz v7, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lk0/x;->U()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    int-to-float v7, v7

    .line 116
    cmpg-float v4, v4, v7

    .line 117
    .line 118
    if-gez v4, :cond_5

    .line 119
    .line 120
    iget-wide v7, p0, Lk0/x;->c:J

    .line 121
    .line 122
    const-wide v9, 0xffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long/2addr v7, v9

    .line 128
    long-to-int v4, v7

    .line 129
    int-to-float v4, v4

    .line 130
    cmpg-float v4, v5, v4

    .line 131
    .line 132
    if-gez v4, :cond_5

    .line 133
    .line 134
    invoke-interface {p1, v1}, Lm0/n$e;->d(Lm0/l;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    new-instance v0, Lm0/o;

    .line 139
    .line 140
    move-object v3, p1

    .line 141
    move-wide v4, p2

    .line 142
    move-object/from16 v6, p4

    .line 143
    .line 144
    move/from16 v7, p5

    .line 145
    .line 146
    move/from16 v8, p6

    .line 147
    .line 148
    move-object v2, v1

    .line 149
    move-object v1, p0

    .line 150
    invoke-direct/range {v0 .. v8}, Lm0/o;-><init>(Lm0/n;Lm0/l;Lm0/n$e;JLm0/e;ZZ)V

    .line 151
    .line 152
    .line 153
    move-object p1, v0

    .line 154
    move-object v5, v6

    .line 155
    move v7, v8

    .line 156
    const/high16 v1, -0x40800000    # -1.0f

    .line 157
    .line 158
    invoke-virtual {v5, v9, v1, v7, p1}, Lm0/e;->b(Ljava/lang/Object;FZLe7/a;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    move-wide v3, p2

    .line 163
    move-object/from16 v5, p4

    .line 164
    .line 165
    move/from16 v7, p6

    .line 166
    .line 167
    if-nez p5, :cond_6

    .line 168
    .line 169
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    invoke-virtual {p0}, Lm0/n;->u0()J

    .line 173
    .line 174
    .line 175
    move-result-wide v8

    .line 176
    invoke-virtual {p0, v3, v4, v8, v9}, Lm0/n;->m0(JJ)F

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-nez v9, :cond_9

    .line 185
    .line 186
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-nez v9, :cond_9

    .line 191
    .line 192
    iget v9, v5, Lm0/e;->c:I

    .line 193
    .line 194
    invoke-static {v5}, LR6/r;->d(Ljava/util/List;)I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-ne v9, v10, :cond_7

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    invoke-static {v8, v7}, Lo1/a;->e(FZ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v9

    .line 205
    invoke-virtual {v5}, Lm0/e;->a()J

    .line 206
    .line 207
    .line 208
    move-result-wide v11

    .line 209
    invoke-static {v11, v12, v9, v10}, LD0/l;->d(JJ)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-lez v9, :cond_8

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_8
    move v2, v6

    .line 217
    :goto_2
    if-eqz v2, :cond_9

    .line 218
    .line 219
    move-object v0, p0

    .line 220
    move-object v2, p1

    .line 221
    move/from16 v6, p5

    .line 222
    .line 223
    invoke-virtual/range {v0 .. v8}, Lm0/n;->x0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_9
    move-object v0, p0

    .line 228
    move-object v2, p1

    .line 229
    move-wide v3, p2

    .line 230
    move-object/from16 v5, p4

    .line 231
    .line 232
    move/from16 v6, p5

    .line 233
    .line 234
    move/from16 v7, p6

    .line 235
    .line 236
    invoke-virtual/range {v0 .. v8}, Lm0/n;->I0(Lm0/l;Lm0/n$e;JLm0/e;ZZF)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public z0(Lm0/n$e;JLm0/e;ZZ)V
    .locals 8
    .param p1    # Lm0/n$e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lm0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm0/l<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "LS/i;",
            ">(",
            "Lm0/n$e<",
            "TT;TC;TM;>;J",
            "Lm0/e<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    const-string v0, "hitTestSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hitTestResult"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lm0/n;->w0()Lm0/n;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, p2, p3}, Lm0/n;->q0(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    move-object v2, p1

    .line 22
    move-object v5, p4

    .line 23
    move v6, p5

    .line 24
    move v7, p6

    .line 25
    invoke-virtual/range {v1 .. v7}, Lm0/n;->y0(Lm0/n$e;JLm0/e;ZZ)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
