.class Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisableHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherAdapter"
.end annotation


# instance fields
.field private checkedIndex:I

.field private launcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 364
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->checkedIndex:I

    .line 367
    invoke-static {}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getInstance()Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;

    move-result-object v0

    .line 368
    .local v0, launcherData:Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->getLauncherList(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    .line 369
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    .line 373
    :cond_0
    if-eqz p2, :cond_1

    .line 374
    invoke-virtual {p0, p2}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->getPositionByName(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->checkedIndex:I

    .line 376
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 390
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionByName(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, -0x1

    .line 398
    if-nez p1, :cond_0

    move v0, v3

    .line 414
    :goto_0
    return v0

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 402
    .local v2, len:I
    const/4 v1, 0x0

    .line 404
    .local v1, info:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    move v0, v3

    .line 414
    goto :goto_0

    .line 405
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 406
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_3

    .line 404
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_3
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 419
    move-object v3, p2

    .line 420
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 421
    .local v0, holder:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    if-nez v3, :cond_1

    .line 422
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030037

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 423
    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-direct {v0, v4, v6}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;-><init>(Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;)V

    .line 424
    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    const v4, 0x7f0800e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;->image:Landroid/widget/ImageView;

    .line 425
    const v4, 0x7f0800ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;->title:Landroid/widget/CheckedTextView;

    .line 426
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 431
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->launcherList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 432
    .local v1, itemData:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->this$0:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 434
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 435
    iget-object v4, v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v4, v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;->title:Landroid/widget/CheckedTextView;

    iget v4, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->checkedIndex:I

    if-ne v4, p1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 440
    :cond_0
    return-object v3

    .line 428
    .end local v1           #itemData:Landroid/content/pm/ResolveInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    check-cast v0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;

    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherItemHolder;
    goto :goto_0

    .line 437
    .restart local v1       #itemData:Landroid/content/pm/ResolveInfo;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCheckedItem(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 394
    iput p1, p0, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity$LauncherAdapter;->checkedIndex:I

    .line 395
    return-void
.end method
