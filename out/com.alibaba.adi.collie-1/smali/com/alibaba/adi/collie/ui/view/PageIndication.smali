.class public Lcom/alibaba/adi/collie/ui/view/PageIndication;
.super Landroid/widget/LinearLayout;
.source "PageIndication.java"


# instance fields
.field private final DEFAULT_PADDING:I

.field private count:I

.field private defaultImageId:I

.field private imageViews:[Landroid/widget/ImageView;

.field private final padding:I

.field private selectIndex:I

.field private selectedImageId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "defaultImageId"
    .parameter "selectedImageId"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->DEFAULT_PADDING:I

    .line 69
    const/high16 v0, 0x40c0

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->padding:I

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->init(Landroid/content/Context;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2
    .parameter "context"
    .parameter "defaultImageId"
    .parameter "selectedImageId"
    .parameter "count"
    .parameter "selectIndex"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->DEFAULT_PADDING:I

    .line 69
    const/high16 v0, 0x40c0

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->padding:I

    .line 43
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->init(Landroid/content/Context;IIII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->DEFAULT_PADDING:I

    .line 69
    const/high16 v0, 0x40c0

    sget v1, Lcom/alibaba/adi/collie/CoreApplication;->sDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->padding:I

    .line 25
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->initContentView()V

    .line 26
    return-void
.end method

.method private initContentView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->removeAllViews()V

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, item:Landroid/widget/ImageView;
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->setGravity(I)V

    .line 75
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->count:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->imageViews:[Landroid/widget/ImageView;

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->count:I

    if-lt v0, v2, :cond_0

    .line 89
    return-void

    .line 77
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #item:Landroid/widget/ImageView;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v1       #item:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->padding:I

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->padding:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->imageViews:[Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 81
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectIndex:I

    if-ne v2, v0, :cond_2

    .line 82
    if-nez v0, :cond_1

    const v2, 0x7f0200dc

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :goto_2
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->addView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    goto :goto_1

    .line 84
    :cond_2
    if-nez v0, :cond_3

    const v2, 0x7f0200db

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->defaultImageId:I

    goto :goto_3
.end method


# virtual methods
.method public change(I)V
    .locals 3
    .parameter "selectIndex"

    .prologue
    .line 92
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->count:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->count:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->imageViews:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    if-nez v0, :cond_3

    const v1, 0x7f0200db

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    if-ne p1, v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->imageViews:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    if-nez v0, :cond_4

    const v1, 0x7f0200dc

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->defaultImageId:I

    goto :goto_1

    .line 99
    :cond_4
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    goto :goto_2
.end method

.method public init(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "defaultImageId"
    .parameter "selectedImageId"

    .prologue
    .line 47
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->defaultImageId:I

    .line 48
    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    .line 49
    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    .line 50
    return-void
.end method

.method public init(Landroid/content/Context;IIII)V
    .locals 0
    .parameter "context"
    .parameter "defaultImageId"
    .parameter "selectedImageId"
    .parameter "count"
    .parameter "selectIndex"

    .prologue
    .line 53
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->defaultImageId:I

    .line 54
    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    .line 55
    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectedImageId:I

    .line 57
    invoke-virtual {p0, p4, p5}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->initData(II)V

    .line 58
    return-void
.end method

.method public initData(II)V
    .locals 1
    .parameter "count"
    .parameter "selectIndex"

    .prologue
    .line 61
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->count:I

    .line 62
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/PageIndication;->selectIndex:I

    .line 63
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/PageIndication;->initContentView()V

    .line 66
    :cond_0
    return-void
.end method
