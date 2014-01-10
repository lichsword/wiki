.class public Landroid/taobao/apirequest/CounterInputStream;
.super Ljava/io/FilterInputStream;
.source "CounterInputStream.java"


# instance fields
.field m_count:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 14
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 20
    .local v0, read:I
    iget v1, p0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 21
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 28
    .local v0, read:I
    iget v1, p0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/taobao/apirequest/CounterInputStream;->m_count:I

    .line 29
    return v0
.end method
