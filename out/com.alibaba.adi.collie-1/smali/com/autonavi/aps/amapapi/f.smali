.class public final Lcom/autonavi/aps/amapapi/f;
.super Ljava/lang/Object;
.source "Gsm.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/f;->a:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/f;->b:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/autonavi/aps/amapapi/f;->c:I

    .line 9
    iput v1, p0, Lcom/autonavi/aps/amapapi/f;->d:I

    .line 10
    const/16 v0, -0x71

    iput v0, p0, Lcom/autonavi/aps/amapapi/f;->e:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/autonavi/aps/amapapi/f;->c:I

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/f;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/autonavi/aps/amapapi/f;->d:I

    .line 46
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/f;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/autonavi/aps/amapapi/f;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/autonavi/aps/amapapi/f;->e:I

    .line 54
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/autonavi/aps/amapapi/f;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/autonavi/aps/amapapi/f;->e:I

    return v0
.end method
