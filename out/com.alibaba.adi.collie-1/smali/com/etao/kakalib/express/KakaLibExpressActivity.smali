.class public Lcom/etao/kakalib/express/KakaLibExpressActivity;
.super Lcom/etao/kakalib/BaseFragmentActivity;
.source "KakaLibExpressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressListItemHolder;,
        Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;

.field private mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etao/kakalib/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/express/KakaLibExpressActivity;)[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 27
    const-string v8, "Page_FastMail_Info"

    invoke-virtual {p0, v8}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->setPageName(Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Lcom/etao/kakalib/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v8, "kakalib_activity_express"

    .line 30
    const v9, 0x7f030001

    .line 29
    invoke-static {p0, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 32
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "section"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 33
    .local v7, parcels:[Landroid/os/Parcelable;
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 34
    array-length v8, v7

    new-array v8, v8, [Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    iput-object v8, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    .line 35
    iget-object v8, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mSections:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    array-length v9, v7

    invoke-static {v7, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_0
    const-string v8, "company"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, companyName:Ljava/lang/String;
    const-string v8, "expressno"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, expressno:Ljava/lang/String;
    const-string v8, "activity_express_sections"

    const v9, 0x7f0a0002

    .line 40
    invoke-static {p0, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 42
    .local v6, lv:Landroid/widget/ListView;
    new-instance v8, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;

    invoke-direct {v8, p0, p0}, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;-><init>(Lcom/etao/kakalib/express/KakaLibExpressActivity;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mAdapter:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 44
    const-string v9, "kakalib_express_header"

    .line 45
    const v10, 0x7f03000a

    .line 44
    invoke-static {p0, v9, v10}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 43
    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, header:Landroid/view/View;
    const-string v8, "activity_express_company"

    const v9, 0x7f0a0025

    .line 47
    invoke-static {p0, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, expressCompany:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const-string v8, "activity_express_no"

    const v9, 0x7f0a0026

    .line 51
    invoke-static {p0, v8, v9}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, expressNo:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/etao/kakalib/express/KakaLibExpressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 55
    const-string v10, "kakalib_express_no"

    .line 56
    const v11, 0x7f070035

    .line 55
    invoke-static {p0, v10, v11}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 54
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v9, ":    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 58
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v6, v4, v13, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 60
    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 61
    iget-object v8, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mAdapter:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v8, p0, Lcom/etao/kakalib/express/KakaLibExpressActivity;->mAdapter:Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;

    invoke-virtual {v8}, Lcom/etao/kakalib/express/KakaLibExpressActivity$ExpressSectionsAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method
