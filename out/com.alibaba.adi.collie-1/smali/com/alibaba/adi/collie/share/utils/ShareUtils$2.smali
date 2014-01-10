.class Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;
.super Ljava/lang/Thread;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyfileFromAsset2SDCardAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$assetPath:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

.field private final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$assetPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$savePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$assetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$savePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/adi/collie/share/utils/ShareUtils;->copyfileFromAsset2SDCardSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, res:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/utils/ShareUtils$2;->val$listener:Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;

    invoke-interface {v1, v0}, Lcom/alibaba/adi/collie/share/utils/ShareUtils$CopyListener;->onCopy(Z)V

    .line 78
    :cond_0
    return-void
.end method
