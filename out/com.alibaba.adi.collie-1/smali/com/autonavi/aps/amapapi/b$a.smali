.class public final Lcom/autonavi/aps/amapapi/b$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/aps/amapapi/b;

.field private b:Lcom/autonavi/aps/amapapi/AmapLoc;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/autonavi/aps/amapapi/b;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 390
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/b$a;->a:Lcom/autonavi/aps/amapapi/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/b$a;->b:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 388
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/b$a;->c:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method public final a()Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/b$a;->b:Lcom/autonavi/aps/amapapi/AmapLoc;

    return-object v0
.end method

.method public final a(Lcom/autonavi/aps/amapapi/AmapLoc;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/b$a;->b:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 400
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 407
    const-string v0, "##"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/b$a;->c:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/b$a;->c:Ljava/lang/String;

    return-object v0
.end method
