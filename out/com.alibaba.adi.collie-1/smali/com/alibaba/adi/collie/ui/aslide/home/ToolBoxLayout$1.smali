.class Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;
.super Ljava/lang/Object;
.source "ToolBoxLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->creatMoveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveingCallback(I)V
    .locals 5
    .parameter "offsetY"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolBoxHeight:I
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->access$2(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mToolboxContainer:Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->access$3(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x1

    .line 294
    .local v2, showHeight:I
    int-to-float v3, v2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->access$4(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 295
    .local v1, percentShowHeight:F
    int-to-float v3, v2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->mMoveHeight:I
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->access$4(Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x5a

    .line 296
    .local v0, alpha:I
    const/16 v3, 0xff

    if-le v0, v3, :cond_0

    .line 297
    const/16 v0, 0xff

    .line 298
    :cond_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/MainActivity;->sWallpaper:Lcom/alibaba/adi/collie/ui/view/WallpaperView;

    invoke-virtual {v3, v2, v0, v1}, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->setBlurAreaHeightAndAlpha(IIF)V

    .line 300
    return-void
.end method
