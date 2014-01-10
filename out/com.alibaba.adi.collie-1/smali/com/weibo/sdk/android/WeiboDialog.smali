.class public Lcom/weibo/sdk/android/WeiboDialog;
.super Landroid/app/Dialog;
.source "WeiboDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;
    }
.end annotation


# static fields
.field static FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final TAG:Ljava/lang/String; = "Weibo-WebView"

.field private static bottom_margin:I

.field private static left_margin:I

.field private static right_margin:I

.field private static theme:I

.field private static top_margin:I


# instance fields
.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private webViewContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/weibo/sdk/android/WeiboDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    const v0, 0x1030010

    sput v0, Lcom/weibo/sdk/android/WeiboDialog;->theme:I

    .line 64
    sput v1, Lcom/weibo/sdk/android/WeiboDialog;->left_margin:I

    .line 65
    sput v1, Lcom/weibo/sdk/android/WeiboDialog;->top_margin:I

    .line 66
    sput v1, Lcom/weibo/sdk/android/WeiboDialog;->right_margin:I

    .line 67
    sput v1, Lcom/weibo/sdk/android/WeiboDialog;->bottom_margin:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 71
    sget v0, Lcom/weibo/sdk/android/WeiboDialog;->theme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 72
    iput-object p2, p0, Lcom/weibo/sdk/android/WeiboDialog;->mUrl:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    .line 74
    iput-object p1, p0, Lcom/weibo/sdk/android/WeiboDialog;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/weibo/sdk/android/WeiboDialog;)Lcom/weibo/sdk/android/WeiboAuthListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weibo/sdk/android/WeiboDialog;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/weibo/sdk/android/WeiboDialog;->handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weibo/sdk/android/WeiboDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private handleRedirectUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 279
    invoke-static {p2}, Lcom/weibo/sdk/android/util/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 281
    .local v2, values:Landroid/os/Bundle;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, error:Ljava/lang/String;
    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, error_code:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 285
    iget-object v3, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v3, v2}, Lcom/weibo/sdk/android/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 296
    :goto_0
    return-void

    .line 288
    :cond_0
    if-nez v1, :cond_1

    .line 289
    iget-object v3, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    new-instance v4, Lcom/weibo/sdk/android/WeiboException;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    new-instance v4, Lcom/weibo/sdk/android/WeiboException;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0
.end method

.method private parseDimens()Z
    .locals 12

    .prologue
    .line 298
    const/4 v7, 0x0

    .line 299
    .local v7, ret:Z
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 300
    .local v0, asseets:Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 301
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 302
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 303
    .local v1, density:F
    const/4 v5, 0x0

    .line 305
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    const-string v10, "values/dimens.xml"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 306
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 308
    .local v9, xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    const-string v10, "utf-8"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 309
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 310
    .local v4, eventCode:I
    const/4 v7, 0x1

    .line 311
    :goto_0
    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    .line 346
    .end local v4           #eventCode:I
    :goto_1
    if-eqz v5, :cond_0

    .line 348
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 354
    .end local v9           #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_2
    return v7

    .line 312
    .restart local v4       #eventCode:I
    .restart local v9       #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 336
    :cond_2
    :goto_3
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 315
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "dimen"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 316
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, name:Ljava/lang/String;
    const-string v10, "weibosdk_dialog_left_margin"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 318
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sput v10, Lcom/weibo/sdk/android/WeiboDialog;->left_margin:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 339
    .end local v4           #eventCode:I
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 340
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 343
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9           #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 344
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 346
    if-eqz v5, :cond_0

    .line 348
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 349
    :catch_2
    move-exception v3

    .line 350
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 321
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #eventCode:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v9       #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_7
    const-string v10, "weibosdk_dialog_top_margin"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 322
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 323
    .restart local v8       #value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sput v10, Lcom/weibo/sdk/android/WeiboDialog;->top_margin:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 345
    .end local v4           #eventCode:I
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    .line 346
    if-eqz v5, :cond_4

    .line 348
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 353
    :cond_4
    :goto_4
    throw v10

    .line 325
    .restart local v4       #eventCode:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v9       #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_9
    const-string v10, "weibosdk_dialog_right_margin"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 326
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 327
    .restart local v8       #value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sput v10, Lcom/weibo/sdk/android/WeiboDialog;->right_margin:I

    goto :goto_3

    .line 329
    .end local v8           #value:Ljava/lang/String;
    :cond_6
    const-string v10, "weibosdk_dialog_bottom_margin"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 330
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 331
    .restart local v8       #value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sput v10, Lcom/weibo/sdk/android/WeiboDialog;->bottom_margin:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 349
    .end local v4           #eventCode:I
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v3

    .line 350
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 349
    .end local v3           #e:Ljava/io/IOException;
    .restart local v9       #xmlpull:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v3

    .line 350
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private setUpWebView()V
    .locals 18

    .prologue
    .line 124
    new-instance v12, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    .line 125
    new-instance v12, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v13, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/weibo/sdk/android/WeiboDialog;Lcom/weibo/sdk/android/WeiboDialog$WeiboWebViewClient;)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weibo/sdk/android/WeiboDialog;->mUrl:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/weibo/sdk/android/WeiboDialog;->synCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weibo/sdk/android/WeiboDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->requestFocus()Z

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 138
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    .line 139
    const/4 v13, -0x1

    .line 138
    invoke-direct {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v7, lp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    .line 142
    const/4 v13, -0x1

    .line 141
    invoke-direct {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v8, lp0:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mContent:Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 146
    .local v1, asseets:Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    .line 147
    .local v6, is:Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 148
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 149
    .local v4, dm:Landroid/util/DisplayMetrics;
    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v3, density:F
    :try_start_0
    const-string v12, "weibosdk_dialog_bg.9.png"

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 153
    const/high16 v12, 0x4120

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 154
    const/high16 v12, 0x4120

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    const/high16 v12, 0x4120

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 156
    const/high16 v12, 0x4120

    mul-float/2addr v12, v3

    float-to-int v12, v12

    iput v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    if-nez v6, :cond_1

    .line 161
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    const v13, 0x7f020021

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_1
    if-eqz v6, :cond_0

    .line 173
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 181
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12, v13, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->parseDimens()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 184
    sget v12, Lcom/weibo/sdk/android/WeiboDialog;->left_margin:I

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    float-to-double v12, v3

    const-wide/high16 v14, 0x3ff0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    .line 186
    const/16 v12, 0xf

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    :goto_3
    sget v12, Lcom/weibo/sdk/android/WeiboDialog;->right_margin:I

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 193
    const-wide/high16 v12, 0x3ff8

    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v15, Lcom/weibo/sdk/android/WeiboDialog;->left_margin:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v11, v12

    .line 194
    .local v11, space:I
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v11

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 203
    .end local v11           #space:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->mContent:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v13, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void

    .line 157
    :catch_0
    move-exception v5

    .line 158
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 168
    .end local v5           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 169
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    if-eqz v6, :cond_0

    .line 173
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 174
    :catch_2
    move-exception v5

    .line 175
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 164
    .end local v5           #e:Ljava/io/IOException;
    :cond_1
    :try_start_6
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 165
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v12

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v14, 0x0

    invoke-direct {v9, v2, v12, v13, v14}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 166
    .local v9, npd:Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weibo/sdk/android/WeiboDialog;->webViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v9}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 170
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #npd:Landroid/graphics/drawable/NinePatchDrawable;
    :catchall_0
    move-exception v12

    .line 171
    if-eqz v6, :cond_2

    .line 173
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 178
    :cond_2
    :goto_5
    throw v12

    .line 174
    :catch_3
    move-exception v5

    .line 175
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 174
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 175
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 187
    .end local v5           #e:Ljava/io/IOException;
    :cond_3
    float-to-double v12, v3

    const-wide/high16 v14, 0x3ff8

    cmpl-double v12, v12, v14

    if-nez v12, :cond_4

    .line 188
    const/16 v12, 0x19

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 190
    :cond_4
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v12, v12, 0xf

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 198
    .local v10, resources:Landroid/content/res/Resources;
    const v12, 0x7f060003

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    const v12, 0x7f060005

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 200
    const v12, 0x7f060004

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    const v12, 0x7f060006

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_4
.end method

.method public static synCookies(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 209
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 210
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 211
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 212
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 213
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 215
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 216
    return-void
.end method


# virtual methods
.method protected onBack()V
    .locals 1

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 115
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->dismiss()V

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 91
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 92
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/weibo/sdk/android/WeiboDialog;->requestWindowFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mContent:Landroid/widget/RelativeLayout;

    .line 98
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    const/16 v1, 0x10

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    invoke-direct {p0}, Lcom/weibo/sdk/android/WeiboDialog;->setUpWebView()V

    .line 103
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mContent:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 104
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/weibo/sdk/android/WeiboDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/weibo/sdk/android/util/Utility;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 79
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialog;->mListener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v0}, Lcom/weibo/sdk/android/WeiboAuthListener;->onCancel()V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
