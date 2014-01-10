.class public Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagMark"
.end annotation


# instance fields
.field private bufferIndex:I

.field private index:I

.field private isBmpLoaded:Z

.field private isToDel:Z

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;II)V
    .locals 1
    .parameter
    .parameter "pos"
    .parameter "bfIndex"

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isToDel:Z

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isBmpLoaded:Z

    .line 81
    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mCurPageIndex:I
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->index:I

    .line 82
    iput p3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->bufferIndex:I

    .line 83
    return-void
.end method


# virtual methods
.method public getBufferIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->bufferIndex:I

    return v0
.end method

.method public getDelMode()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isToDel:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->index:I

    return v0
.end method

.method public isBmpLoaded()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isBmpLoaded:Z

    return v0
.end method

.method public setBmpLoaded(Z)V
    .locals 0
    .parameter "isBmpLoaded"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isBmpLoaded:Z

    return-void
.end method

.method public setDelMode(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$TagMark;->isToDel:Z

    .line 95
    return-void
.end method
