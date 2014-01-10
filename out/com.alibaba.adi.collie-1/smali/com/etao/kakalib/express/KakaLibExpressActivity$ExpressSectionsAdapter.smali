.class public Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "KakaLibExpressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/express/KakaLibExpressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpressSectionsAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/express/KakaLibExpressActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v1}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    iget-object v3, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v4, "kakalib_listitem_card_express"

    .line 103
    const v5, 0x7f03000f

    .line 101
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;

    invoke-direct {v1, v6}, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;-><init>(Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;)V

    .line 106
    .local v1, holder:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    .line 107
    const-string v3, "express_listitem_sincenow"

    const v4, 0x7f0a004a

    .line 105
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvSinceNow:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    .line 111
    const-string v3, "express_listitem_statusdesc"

    const v4, 0x7f0a004c

    .line 109
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    iput-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusDesc:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    .line 115
    const-string v3, "express_listitem_statustime"

    const v4, 0x7f0a004b

    .line 113
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    iput-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusTime:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v2}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v2

    iget-object v3, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v3}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    aget-object v0, v2, v3

    .line 135
    .local v0, expressSection:Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    iget-object v3, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusDesc:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->statusTime:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvSinceNow:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/etao/kakalib/express/ExpressResult$ExpressSection;->sinceNow:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    if-nez p1, :cond_4

    .line 140
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvSinceNow:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v4, "kakalib_bg_express_sincenow_first"

    .line 143
    const v5, 0x7f020007

    .line 141
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusTime:Landroid/widget/TextView;

    const v3, -0x893700

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusDesc:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v3, "kakalib_bg_listitem_first"

    .line 148
    const v4, 0x7f02000b

    .line 146
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    :goto_4
    return-object p2

    .line 118
    .end local v0           #expressSection:Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    .end local v1           #holder:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;

    .restart local v1       #holder:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;
    goto :goto_0

    .line 135
    .restart local v0       #expressSection:Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 136
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 137
    :cond_3
    const-string v2, ""

    goto :goto_3

    .line 150
    :cond_4
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvSinceNow:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v4, "kakalib_bg_express_sincenow"

    .line 152
    const v5, 0x7f020006

    .line 150
    invoke-static {v3, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusTime:Landroid/widget/TextView;

    const v3, -0x423b3e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v2, v1, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;->tvStatusDesc:Landroid/widget/TextView;

    const v3, -0x423b3f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    #getter for: Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    invoke-static {v2}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v3, "kakalib_bg_listitem_last"

    .line 158
    const v4, 0x7f02000e

    .line 156
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->this$0:Lcom/etao/kakalib/express/KakaLibExpressActivity;

    const-string v3, "kakalib_bg_listitem"

    .line 162
    const v4, 0x7f020009

    .line 160
    invoke-static {v2, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4
.end method
