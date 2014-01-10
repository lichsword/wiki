.class Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;
.super Ljava/lang/Object;
.source "LockLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->creatMoveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveingCallback(I)V
    .locals 6
    .parameter "offsetY"

    .prologue
    .line 393
    const-string v3, "msg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6TOP\u83b7\u53d6TOP\u83b7\u53d6TOP\u83b7\u53d6TOP"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$3(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mheight:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$4(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mLockLayout:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$3(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 395
    .local v2, showHeight:I
    int-to-float v3, v2

    .line 396
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$5(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)I

    move-result v4

    int-to-float v4, v4

    .line 395
    div-float v1, v3, v4

    .line 398
    .local v1, percentShowHeight:F
    int-to-float v3, v2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout$3;->this$0:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->mlockLayoutHeight:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->access$5(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x5a

    .line 399
    .local v0, alpha:I
    const/16 v3, 0xff

    if-le v0, v3, :cond_0

    .line 400
    const/16 v0, 0xff

    .line 401
    :cond_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    .line 402
    neg-float v4, v1

    .line 401
    invoke-virtual {v3, v2, v0, v4}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurAreaHeightAndAlpha(IIF)V

    .line 404
    return-void
.end method
