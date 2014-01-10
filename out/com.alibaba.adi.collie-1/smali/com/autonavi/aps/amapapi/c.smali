.class public final Lcom/autonavi/aps/amapapi/c;
.super Ljava/lang/Object;
.source "Cdma.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/c;->a:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/c;->b:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/autonavi/aps/amapapi/c;->c:I

    .line 9
    iput v1, p0, Lcom/autonavi/aps/amapapi/c;->d:I

    .line 10
    iput v1, p0, Lcom/autonavi/aps/amapapi/c;->e:I

    .line 11
    iput v1, p0, Lcom/autonavi/aps/amapapi/c;->f:I

    .line 12
    iput v1, p0, Lcom/autonavi/aps/amapapi/c;->g:I

    .line 13
    const/16 v0, -0x71

    iput v0, p0, Lcom/autonavi/aps/amapapi/c;->h:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    .line 41
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->c:I

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/c;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->c:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 51
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->d:I

    .line 53
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/c;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->e:I

    .line 61
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->d:I

    return v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->f:I

    .line 69
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->e:I

    return v0
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->g:I

    .line 77
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->f:I

    return v0
.end method

.method public final f(I)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/autonavi/aps/amapapi/c;->h:I

    .line 85
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/autonavi/aps/amapapi/c;->h:I

    return v0
.end method
