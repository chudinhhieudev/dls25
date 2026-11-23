.class public final Lv/d;
.super Ljava/lang/Object;
.source "Animatable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lv/n;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lv/V;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lv/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv/i<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lv/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lv/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lv/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lv/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lv/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lv/V;Ljava/lang/Object;)V
    .locals 10
    .param p2    # Lv/V;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "typeConverter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lv/d;->a:Lv/V;

    .line 10
    .line 11
    iput-object p3, p0, Lv/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v1, Lv/i;

    .line 14
    .line 15
    const-wide/high16 v5, -0x8000000000000000L

    .line 16
    .line 17
    const-wide/high16 v7, -0x8000000000000000L

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v3, p1

    .line 22
    move-object v2, p2

    .line 23
    invoke-direct/range {v1 .. v9}, Lv/i;-><init>(Lv/V;Ljava/lang/Object;Lv/n;JJZ)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lv/d;->c:Lv/i;

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    sget-object p2, LH/i1;->a:LH/i1;

    .line 31
    .line 32
    invoke-static {p1, p2}, LH/X0;->b(Ljava/lang/Object;LH/W0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lv/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 37
    .line 38
    invoke-static {v3, p2}, LH/X0;->b(Ljava/lang/Object;LH/W0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lv/d;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 43
    .line 44
    new-instance p1, Lv/B;

    .line 45
    .line 46
    invoke-direct {p1}, Lv/B;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lv/d;->f:Lv/B;

    .line 50
    .line 51
    new-instance p1, Lv/I;

    .line 52
    .line 53
    const/4 p2, 0x3

    .line 54
    invoke-direct {p1, p3, p2}, Lv/I;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lv/V;->b()Le7/l;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v3}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lv/n;

    .line 66
    .line 67
    invoke-virtual {p1}, Lv/n;->b()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    const/4 p3, 0x0

    .line 72
    move v0, p3

    .line 73
    :goto_0
    if-ge v0, p2, :cond_0

    .line 74
    .line 75
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lv/n;->e(FI)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iput-object p1, p0, Lv/d;->g:Lv/n;

    .line 84
    .line 85
    iget-object p2, p0, Lv/d;->a:Lv/V;

    .line 86
    .line 87
    invoke-virtual {p2}, Lv/V;->b()Le7/l;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2, v3}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Lv/n;

    .line 96
    .line 97
    invoke-virtual {p2}, Lv/n;->b()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_1
    if-ge p3, v0, :cond_1

    .line 102
    .line 103
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 104
    .line 105
    invoke-virtual {p2, v1, p3}, Lv/n;->e(FI)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 p3, p3, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iput-object p2, p0, Lv/d;->h:Lv/n;

    .line 112
    .line 113
    iput-object p1, p0, Lv/d;->i:Lv/n;

    .line 114
    .line 115
    iput-object p2, p0, Lv/d;->j:Lv/n;

    .line 116
    .line 117
    return-void
.end method

.method public static final a(Lv/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lv/d;->g:Lv/n;

    .line 2
    .line 3
    iget-object v1, p0, Lv/d;->i:Lv/n;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lv/d;->j:Lv/n;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lv/d;->h:Lv/n;

    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p0, p0, Lv/d;->a:Lv/V;

    .line 23
    .line 24
    invoke-virtual {p0}, Lv/V;->b()Le7/l;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lv/n;

    .line 33
    .line 34
    invoke-virtual {v0}, Lv/n;->b()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    :goto_0
    if-ge v4, v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Lv/n;->a(I)F

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v1, v4}, Lv/n;->a(I)F

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    cmpg-float v6, v6, v7

    .line 51
    .line 52
    if-ltz v6, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Lv/n;->a(I)F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v2, v4}, Lv/n;->a(I)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    cmpl-float v6, v6, v7

    .line 63
    .line 64
    if-lez v6, :cond_2

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0, v4}, Lv/n;->a(I)F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v1, v4}, Lv/n;->a(I)F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v2, v4}, Lv/n;->a(I)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-static {v5, v6, v7}, Lj7/j;->z(FFF)F

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v0, v5, v4}, Lv/n;->e(FI)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    if-eqz v5, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lv/V;->a()Le7/l;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-interface {p0, v0}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final b(Lv/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/d;->c:Lv/i;

    .line 2
    .line 3
    iget-object v1, v0, Lv/i;->c:Lv/n;

    .line 4
    .line 5
    invoke-virtual {v1}, Lv/n;->d()V

    .line 6
    .line 7
    .line 8
    const-wide/high16 v1, -0x8000000000000000L

    .line 9
    .line 10
    iput-wide v1, v0, Lv/i;->d:J

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object p0, p0, Lv/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, LH/V0;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static c(Lv/d;Ljava/lang/Object;Lv/h;LV6/e;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lv/d;->a:Lv/V;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv/V;->a()Le7/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lv/d;->c:Lv/i;

    .line 8
    .line 9
    iget-object v1, v1, Lv/i;->c:Lv/n;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lv/d;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    const-string v0, "animationSpec"

    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "typeConverter"

    .line 25
    .line 26
    iget-object v7, p0, Lv/d;->a:Lv/V;

    .line 27
    .line 28
    invoke-static {v7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lv/N;

    .line 32
    .line 33
    invoke-virtual {v7}, Lv/V;->b()Le7/l;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v4}, Le7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v10, v0

    .line 42
    check-cast v10, Lv/n;

    .line 43
    .line 44
    move-object v9, p1

    .line 45
    move-object v6, p2

    .line 46
    invoke-direct/range {v5 .. v10}, Lv/N;-><init>(Lv/h;Lv/V;Ljava/lang/Object;Ljava/lang/Object;Lv/n;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lv/d;->c:Lv/i;

    .line 50
    .line 51
    iget-wide v6, p1, Lv/i;->d:J

    .line 52
    .line 53
    new-instance v2, Lv/a;

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v3, p0

    .line 57
    invoke-direct/range {v2 .. v8}, Lv/a;-><init>(Lv/d;Ljava/lang/Object;Lv/N;JLV6/e;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v3, Lv/d;->f:Lv/B;

    .line 61
    .line 62
    invoke-static {p0, v2, p3}, Lv/B;->a(Lv/B;Le7/l;LV6/e;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv/d;->c:Lv/i;

    .line 2
    .line 3
    iget-object v0, v0, Lv/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 4
    .line 5
    invoke-virtual {v0}, LH/V0;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e(Ljava/lang/Comparable;LX6/i;)Ljava/lang/Object;
    .locals 2
    .param p2    # LX6/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lv/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lv/b;-><init>(Lv/d;Ljava/lang/Comparable;LV6/e;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lv/d;->f:Lv/B;

    .line 8
    .line 9
    invoke-static {p1, v0, p2}, Lv/B;->a(Lv/B;Le7/l;LV6/e;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, LW6/a;->COROUTINE_SUSPENDED:LW6/a;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, LQ6/z;->a:LQ6/z;

    .line 19
    .line 20
    return-object p1
.end method

.method public final f(LX6/i;)Ljava/lang/Object;
    .locals 2
    .param p1    # LX6/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lv/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lv/c;-><init>(Lv/d;LV6/e;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lv/d;->f:Lv/B;

    .line 8
    .line 9
    invoke-static {v1, v0, p1}, Lv/B;->a(Lv/B;Le7/l;LV6/e;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, LW6/a;->COROUTINE_SUSPENDED:LW6/a;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, LQ6/z;->a:LQ6/z;

    .line 19
    .line 20
    return-object p1
.end method
