.class final Lcom/ut/share/utils/ShareUtils$1;
.super Ljava/lang/Thread;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/utils/ShareUtils;->generateQRCode(Ljava/lang/String;Lcom/ut/share/utils/a;Lcom/ut/share/utils/ShareUtils$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic pM:Lcom/ut/share/utils/a;

.field final synthetic pN:Lcom/ut/share/utils/ShareUtils$a;

.field final synthetic pn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ut/share/utils/a;Lcom/ut/share/utils/ShareUtils$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ut/share/utils/ShareUtils$1;->pn:Ljava/lang/String;

    iput-object p2, p0, Lcom/ut/share/utils/ShareUtils$1;->pM:Lcom/ut/share/utils/a;

    iput-object p3, p0, Lcom/ut/share/utils/ShareUtils$1;->pN:Lcom/ut/share/utils/ShareUtils$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ut/share/utils/ShareUtils$1;->pn:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/ut/share/utils/ShareUtils$1;->pM:Lcom/ut/share/utils/a;

    iget-object v3, p0, Lcom/ut/share/utils/ShareUtils$1;->pn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ut/share/utils/a;->setImagePath(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/ut/share/utils/ShareUtils$1;->pM:Lcom/ut/share/utils/a;

    invoke-virtual {v2}, Lcom/ut/share/utils/a;->execute()Z

    move-result v1

    .line 62
    .local v1, res:Z
    iget-object v2, p0, Lcom/ut/share/utils/ShareUtils$1;->pN:Lcom/ut/share/utils/ShareUtils$a;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/ut/share/utils/ShareUtils$1;->pN:Lcom/ut/share/utils/ShareUtils$a;

    invoke-interface {v2, v1}, Lcom/ut/share/utils/ShareUtils$a;->B(Z)V

    .line 65
    :cond_1
    return-void
.end method
