.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;
.super Landroid/widget/TableLayout;
.source "WallpaperTableLayout.java"


# static fields
.field private static final COLUMNS_PER_ROW:I = 0x3

.field private static sItemWidth:I


# instance fields
.field private curIndex:I

.field public itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->curIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->itemList:Ljava/util/ArrayList;

    .line 40
    sget v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->sItemWidth:I

    if-gtz v0, :cond_0

    .line 41
    invoke-static {p1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->sItemWidth:I

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->curIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->itemList:Ljava/util/ArrayList;

    .line 47
    sget v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->sItemWidth:I

    if-gtz v0, :cond_0

    .line 48
    invoke-static {p1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->sItemWidth:I

    .line 50
    :cond_0
    return-void
.end method

.method private getItemLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->sItemWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 96
    const/4 v3, -0x1

    .line 95
    invoke-direct {v0, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 97
    .local v0, itemLayoutParams:Landroid/widget/TableRow$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 98
    .local v1, margin:I
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 99
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 100
    return-object v0
.end method

.method private getTableRowLayoutParams()Landroid/widget/TableLayout$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 86
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v1, rowLayoutParams:Landroid/widget/TableLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/DensityPixel;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 89
    .local v0, margin:I
    invoke-virtual {v1, v4, v0, v4, v0}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 91
    return-object v1
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->removeAllViews()V

    .line 60
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 61
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->curIndex:I

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, row:Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->mDataAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getTableRowLayoutParams()Landroid/widget/TableLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->requestLayout()V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->invalidate()V

    .line 83
    return-void

    .line 65
    :cond_1
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 66
    new-instance v1, Landroid/widget/TableRow;

    .end local v1           #row:Landroid/widget/TableRow;
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 68
    .restart local v1       #row:Landroid/widget/TableRow;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->mDataAdapter:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getItemLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->getTableRowLayoutParams()Landroid/widget/TableLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v1, 0x0

    .line 64
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->mDataAdapter:Landroid/widget/BaseAdapter;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperTableLayout;->notifyDataChanged()V

    .line 55
    return-void
.end method
