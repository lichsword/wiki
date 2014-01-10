.class public Lcom/alibaba/adi/collie/share/control/ShareAppProvider;
.super Ljava/lang/Object;
.source "ShareAppProvider.java"


# static fields
.field public static final APP_LAIWANG:Ljava/lang/String; = "com.alibaba.android.babylon"

.field public static final APP_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final APP_QQ_2013:Ljava/lang/String; = "com.tencent.minihd.qq"

.field public static final APP_QWEIBO:Ljava/lang/String; = "com.tencent.WBlog"

.field public static final APP_QZONE:Ljava/lang/String; = "com.qzone"

.field public static final APP_WEIBO:Ljava/lang/String; = "com.sina.weibo"

.field public static final APP_WEIXIN:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private ctx:Landroid/app/Activity;

.field private weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;)V
    .locals 0
    .parameter "context"
    .parameter "weixin"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    .line 36
    return-void
.end method

.method private updateItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 134
    return-void
.end method


# virtual methods
.method public getShareApp()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/share/control/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.intent.action.SEND"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v13, shareIntent:Landroid/content/Intent;
    const-string v21, "image/*"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 48
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 49
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v9, :cond_0

    .line 50
    const/16 v18, 0x0

    .line 123
    :goto_0
    return-object v18

    .line 53
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v18, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/share/control/Share;>;"
    const/4 v7, 0x0

    .line 56
    .local v7, laiwang_found:Z
    new-instance v6, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x5

    const v22, 0x7f0201ba

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01bb

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 56
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 58
    .local v6, laiwang:Lcom/alibaba/adi/collie/share/control/Share;
    new-instance v8, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x6

    const v22, 0x7f0201bb

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01bc

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 58
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v8, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 68
    .local v8, laiwang_share:Lcom/alibaba/adi/collie/share/control/Share;
    new-instance v14, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x0

    const v22, 0x7f0201bf

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01b5

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 68
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 71
    .local v14, sina_weibo_share:Lcom/alibaba/adi/collie/share/control/Share;
    new-instance v20, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x4

    const v22, 0x7f0201c7

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01b6

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 71
    invoke-direct/range {v20 .. v23}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 73
    .local v20, weixin_share:Lcom/alibaba/adi/collie/share/control/Share;
    new-instance v19, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x8

    const v22, 0x7f0201b7

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01b7

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 73
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 76
    .local v19, weixin_pengyou_share:Lcom/alibaba/adi/collie/share/control/Share;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;->isWXAppSupportSession()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 77
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    new-instance v16, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x3

    const v22, 0x7f0201bc

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01b9

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 83
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 85
    .local v16, tecent_qq_share:Lcom/alibaba/adi/collie/share/control/Share;
    sget-object v21, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v22, "com.tencent.mobileqq"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/adi/collie/util/ApkUtil;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v21

    if-nez v21, :cond_2

    sget-object v21, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v22, "com.tencent.minihd.qq"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/adi/collie/util/ApkUtil;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 86
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_3
    new-instance v17, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x2

    const v22, 0x7f0201c5

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01b8

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 90
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 94
    .local v17, tecent_weibo_share:Lcom/alibaba/adi/collie/share/control/Share;
    new-instance v12, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x1

    const v22, 0x7f0201be

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01ba

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 94
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v12, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 98
    .local v12, qzone_share:Lcom/alibaba/adi/collie/share/control/Share;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_5

    .line 115
    if-eqz v7, :cond_4

    .line 116
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 117
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    :cond_4
    new-instance v15, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0x9

    const v22, 0x7f0201c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01be

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v15, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 120
    .local v15, sms_share:Lcom/alibaba/adi/collie/share/control/Share;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Lcom/alibaba/adi/collie/share/control/Share;

    const/16 v21, 0xa

    const v22, 0x7f0201b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->ctx:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0a01bf

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v4, v0, v1, v2}, Lcom/alibaba/adi/collie/share/control/Share;-><init>(IILjava/lang/String;)V

    .line 122
    .local v4, copy_share:Lcom/alibaba/adi/collie/share/control/Share;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99
    .end local v4           #copy_share:Lcom/alibaba/adi/collie/share/control/Share;
    .end local v15           #sms_share:Lcom/alibaba/adi/collie/share/control/Share;
    :cond_5
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 100
    .local v10, packageName:Ljava/lang/String;
    const-string v21, "com.sina.weibo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 101
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v10, v0}, Lcom/alibaba/adi/collie/share/control/Share;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 103
    :cond_7
    const-string v21, "com.qzone"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 104
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v10, v0}, Lcom/alibaba/adi/collie/share/control/Share;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_8
    const-string v21, "com.tencent.WBlog"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 107
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/alibaba/adi/collie/share/control/Share;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_9
    const-string v21, "com.alibaba.android.babylon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 110
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v10, v0}, Lcom/alibaba/adi/collie/share/control/Share;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v10, v0}, Lcom/alibaba/adi/collie/share/control/Share;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v7, 0x1

    goto/16 :goto_2
.end method
