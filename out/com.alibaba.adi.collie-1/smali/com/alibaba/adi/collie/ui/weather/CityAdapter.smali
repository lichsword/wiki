.class public Lcom/alibaba/adi/collie/ui/weather/CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    }
.end annotation


# instance fields
.field private myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/weather/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/weather/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, myList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/weather/CityListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, holder:Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    if-nez p2, :cond_0

    .line 39
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;-><init>(Lcom/alibaba/adi/collie/ui/weather/CityAdapter;)V

    .line 41
    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    const v1, 0x7f0800e7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mNameText:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->access$0(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;Landroid/widget/TextView;)V

    .line 42
    const v1, 0x7f0800e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->access$1(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;Landroid/widget/ImageView;)V

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    #getter for: Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mNameText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->access$2(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getHas_child()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 49
    #getter for: Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->access$3(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :goto_1
    return-object p2

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;

    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;
    goto :goto_0

    .line 51
    :cond_1
    #getter for: Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;->access$3(Lcom/alibaba/adi/collie/ui/weather/CityAdapter$Holder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/weather/CityListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/weather/CityListItem;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->myList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method
