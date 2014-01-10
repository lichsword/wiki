.class Lcom/ut/share/component/ShareProcessor$4;
.super Ljava/lang/Object;
.source "ShareProcessor.java"

# interfaces
.implements Lcom/ut/share/utils/ShareUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/component/ShareProcessor;->generateQRCode(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pk:Lcom/ut/share/data/ShareAppInfo;

.field final synthetic pl:Lcom/ut/share/component/ShareProcessor;

.field final synthetic pm:Lcom/ut/share/data/ShareData;

.field final synthetic pn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareData;Ljava/lang/String;Lcom/ut/share/data/ShareAppInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor$4;->pl:Lcom/ut/share/component/ShareProcessor;

    iput-object p2, p0, Lcom/ut/share/component/ShareProcessor$4;->pm:Lcom/ut/share/data/ShareData;

    iput-object p3, p0, Lcom/ut/share/component/ShareProcessor$4;->pn:Ljava/lang/String;

    iput-object p4, p0, Lcom/ut/share/component/ShareProcessor$4;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 3
    .parameter "res"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor$4;->pm:Lcom/ut/share/data/ShareData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/share/component/ShareProcessor$4;->pn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/share/data/ShareData;->setQRCodeUri(Landroid/net/Uri;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor$4;->pl:Lcom/ut/share/component/ShareProcessor;

    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$4;->pk:Lcom/ut/share/data/ShareAppInfo;

    #calls: Lcom/ut/share/component/ShareProcessor;->gotoShare(Lcom/ut/share/data/ShareAppInfo;)V
    invoke-static {v0, v1}, Lcom/ut/share/component/ShareProcessor;->access$400(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V

    .line 251
    return-void
.end method
