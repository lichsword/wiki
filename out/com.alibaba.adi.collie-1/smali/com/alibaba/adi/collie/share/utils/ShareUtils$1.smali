.class Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;
.super Ljava/lang/Thread;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/utils/ShareUtils;->generateQRCode(Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$entity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

.field private final synthetic val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;

.field private final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$savePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$entity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

    iput-object p3, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$savePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$entity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

    iget-object v3, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->setImagePath(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$entity:Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/share/utils/ShareEncodeEntity;->execute()Z

    move-result v1

    .line 59
    .local v1, res:Z
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$1;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;

    invoke-interface {v2, v1}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$QRCodeListener;->onFinish(Z)V

    .line 62
    :cond_1
    return-void
.end method
