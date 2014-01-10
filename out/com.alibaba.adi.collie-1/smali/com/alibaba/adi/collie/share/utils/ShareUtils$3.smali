.class Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;
.super Ljava/lang/Thread;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyfileFromSDCard2SDCardAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dstPath:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

.field private final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$srcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$dstPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$srcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$dstPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyfileFromSDCard2SDCardSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 87
    .local v0, res:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$3;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    invoke-interface {v1, v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;->onCopy(Z)V

    .line 90
    :cond_0
    return-void
.end method
