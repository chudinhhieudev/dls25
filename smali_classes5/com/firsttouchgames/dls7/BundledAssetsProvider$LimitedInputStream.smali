.class final Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "BundledAssetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/dls7/BundledAssetsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitedInputStream"
.end annotation


# instance fields
.field remaining:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget-wide v1, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-wide v0, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, p3

    iget-wide v3, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    iget-wide p2, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/firsttouchgames/dls7/BundledAssetsProvider$LimitedInputStream;->remaining:J

    :cond_1
    return p1
.end method
