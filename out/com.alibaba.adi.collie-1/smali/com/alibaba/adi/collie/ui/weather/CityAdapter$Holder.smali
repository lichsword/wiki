.class Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
.super Ljava/lang/Object;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/weather/CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mNameText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/weather/CityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->this$0:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mNameText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mArrow:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mNameText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method
