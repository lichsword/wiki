.class public Lcom/ut/share/executor/LaiwangExecutor;
.super Lcom/ut/share/executor/Executor;
.source "LaiwangExecutor.java"


# instance fields
.field private laiwangShareType:Ljava/lang/String;

.field private mLaiwang:Lcom/ut/share/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/a;Z)V
    .locals 1
    .parameter "context"
    .parameter "spt"
    .parameter "laiwang"
    .parameter "isChat"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ut/share/executor/Executor;-><init>(Landroid/app/Activity;Lcom/ut/share/SharePlatform;)V

    .line 27
    iput-object p3, p0, Lcom/ut/share/executor/LaiwangExecutor;->mLaiwang:Lcom/ut/share/a/a;

    .line 28
    if-eqz p4, :cond_0

    .line 29
    const-string v0, "SMS"

    iput-object v0, p0, Lcom/ut/share/executor/LaiwangExecutor;->laiwangShareType:Ljava/lang/String;

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "DYNAMIC2"

    iput-object v0, p0, Lcom/ut/share/executor/LaiwangExecutor;->laiwangShareType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected doShare()Z
    .locals 18

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mLaiwang:Lcom/ut/share/a/a;

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    .line 50
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    sget-object v4, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    const-string v5, "k_title"

    invoke-virtual {v1, v4, v5}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 51
    .local v17, title:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    sget-object v4, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    const-string v5, "k_share_activity"

    invoke-virtual {v1, v4, v5}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 52
    .local v12, activity:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    sget-object v4, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    const-string v5, "k_1212"

    invoke-virtual {v1, v4, v5}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 53
    .local v14, is1212:Ljava/lang/Object;
    if-nez v12, :cond_4

    const/16 v16, 0x0

    .line 54
    .local v16, shareActivity:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 55
    .local v7, thumbpicPath:Ljava/lang/String;
    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, msgTitle:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getPicUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 63
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/share/executor/LaiwangExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    const-string v5, "k_from"

    invoke-virtual {v1, v4, v5}, Lcom/ut/share/data/ShareData;->getCustomParam(Lcom/ut/share/SharePlatform;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 64
    .local v15, lwfrom:Ljava/lang/Object;
    if-nez v15, :cond_7

    const-string v10, "\u624b\u673a\u6dd8\u5b9d"

    .line 65
    .local v10, laiwangFrom:Ljava/lang/String;
    :goto_4
    const v2, 0x20131023

    .line 67
    .local v2, version:I
    const-string v1, "1212"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const v2, 0x20131120

    .line 71
    :cond_2
    sget-object v1, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    invoke-virtual {v1}, Lcom/ut/share/SharePlatform;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/share/executor/LaiwangExecutor;->mSpt:Lcom/ut/share/SharePlatform;

    invoke-virtual {v4}, Lcom/ut/share/SharePlatform;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const-string v3, "\u53cc12\u4e70\u8fd9\u4e2a\uff0c\u6765\u5f80\u7ed9\u6211\u514d\u5355"

    .line 75
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mLaiwang:Lcom/ut/share/a/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v4}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareData;->getPic()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v8}, Lcom/ut/share/data/ShareData;->getThumbPicUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v9}, Lcom/ut/share/data/ShareData;->getWrappedLink()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ut/share/executor/LaiwangExecutor;->laiwangShareType:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/ut/share/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 53
    .end local v2           #version:I
    .end local v3           #msgTitle:Ljava/lang/String;
    .end local v7           #thumbpicPath:Ljava/lang/String;
    .end local v10           #laiwangFrom:Ljava/lang/String;
    .end local v15           #lwfrom:Ljava/lang/Object;
    .end local v16           #shareActivity:Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 55
    .restart local v7       #thumbpicPath:Ljava/lang/String;
    .restart local v16       #shareActivity:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 59
    .restart local v3       #msgTitle:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ut/share/executor/LaiwangExecutor;->mShareData:Lcom/ut/share/data/ShareData;

    invoke-virtual {v1}, Lcom/ut/share/data/ShareData;->getQRCodeUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 64
    .restart local v15       #lwfrom:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_4

    .line 79
    .end local v3           #msgTitle:Ljava/lang/String;
    .end local v7           #thumbpicPath:Ljava/lang/String;
    .end local v12           #activity:Ljava/lang/Object;
    .end local v14           #is1212:Ljava/lang/Object;
    .end local v15           #lwfrom:Ljava/lang/Object;
    .end local v16           #shareActivity:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/Object;
    :catch_0
    move-exception v13

    .line 80
    .local v13, e:Ljava/lang/Exception;
    const-string v1, "LaiwangExecutor"

    const-string v4, "share fail"

    invoke-static {v1, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isDirectly()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
