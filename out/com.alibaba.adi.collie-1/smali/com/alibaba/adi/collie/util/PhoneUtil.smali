.class public Lcom/alibaba/adi/collie/util/PhoneUtil;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# static fields
.field private static final DEFAULT_DENSITY:F = 1.5f

.field private static final DEFAULT_DPI:I = 0xa0

.field public static final MODEL_NAME_MI_2:Ljava/lang/String; = "MI 2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShortcutToDesktop(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "shortcutIntent"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, addIntent:Landroid/content/Intent;
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v1, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 243
    const v2, 0x7f02007f

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public static disableHardwareAcceleration(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 331
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 333
    :cond_0
    return-void
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    .line 120
    const/high16 v1, 0x3fc0

    .line 121
    .local v1, resultDensity:F
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 122
    .local v2, wm:Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 127
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    return v1
.end method

.method public static getDensityDpi(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 137
    const/16 v1, 0xa0

    .line 138
    .local v1, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 139
    .local v2, wm:Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 140
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 144
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    return v1
.end method

.method public static getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2
    .parameter "activity"

    .prologue
    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    return-object v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    .line 319
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 318
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 320
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 326
    .end local v0           #imei:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 286
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "/sys/class/net/wlan0/address"

    aput-object v5, v2, v4

    const/4 v5, 0x1

    const-string v6, "/sys/class/net/eth0/address"

    aput-object v6, v2, v5

    .line 288
    .local v2, pathes:[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-lt v4, v5, :cond_1

    .line 300
    :cond_0
    :goto_1
    return-object v3

    .line 288
    :cond_1
    aget-object v1, v2, v4

    .line 290
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, mac:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 292
    const-string v6, "[\n\r]"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 296
    .end local v0           #mac:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenSize(Landroid/app/Activity;)[I
    .locals 4
    .parameter "activity"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 67
    .local v0, dm:Landroid/util/DisplayMetrics;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 68
    .local v1, size:[I
    const/4 v2, 0x0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v1, v2

    .line 69
    const/4 v2, 0x1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v3, v1, v2

    .line 70
    return-object v1
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 5
    .parameter "context"

    .prologue
    .line 80
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 81
    .local v1, screenSize:[I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 82
    .local v2, wm:Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 83
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v1, v3

    .line 86
    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v4, v1, v3

    .line 88
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    return-object v1
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static packageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    :goto_0
    return v2

    .line 309
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 310
    const/16 v4, 0x2000

    .line 309
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 311
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    goto :goto_0

    .line 312
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static removeShortcutDesktop(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "shortcutIntent"

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, removeIntent:Landroid/content/Intent;
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string v1, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public static retrieveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 162
    const/4 v4, 0x0

    .line 164
    .local v4, result:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v10

    .line 165
    .local v10, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 166
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 167
    const/4 v12, 0x0

    .line 215
    :goto_0
    return-object v12

    :cond_0
    move-object v0, v3

    .line 170
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 173
    .local v8, wallpaperBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v5

    .line 174
    .local v5, screen:[I
    aget v7, v5, v13

    .line 175
    .local v7, screenWidth:I
    aget v6, v5, v12

    .line 176
    .local v6, screenHeight:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 177
    .local v11, wallpaperWidth:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 179
    .local v9, wallpaperHeight:I
    if-le v11, v7, :cond_2

    .line 180
    aget v12, v5, v12

    if-lt v9, v12, :cond_1

    .line 182
    sub-int v12, v11, v7

    div-int/lit8 v12, v12, 0x2

    invoke-static {v8, v12, v13, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1
    :goto_1
    move-object v12, v4

    .line 215
    goto :goto_0

    .line 188
    :cond_2
    if-ne v11, v7, :cond_3

    .line 189
    aget v12, v5, v12

    if-lt v9, v12, :cond_1

    .line 191
    invoke-static {v8, v13, v13, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    aget v12, v5, v12

    if-lt v9, v12, :cond_4

    .line 199
    mul-int v12, v11, v6

    div-int v2, v12, v7

    .line 200
    .local v2, clipHeight:I
    invoke-static {v8, v13, v13, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    .local v1, clipBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v7, v6, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 205
    .end local v1           #clipBitmap:Landroid/graphics/Bitmap;
    .end local v2           #clipHeight:I
    :cond_4
    invoke-static {v8, v7, v6, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method public static retrieveWallpaperDrawale(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, result:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/PhoneUtil;->retrieveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 224
    .restart local v1       #result:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public static shortcutExists(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, result:Z
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, title:Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 273
    const-string v9, "content://com.android.launcher.settings/favorites?notify=true"

    .line 277
    .local v9, uriStr:Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    const/4 v7, 0x1

    .line 282
    :cond_0
    return v7

    .line 275
    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #uriStr:Ljava/lang/String;
    :cond_1
    const-string v9, "content://com.android.launcher2.settings/favorites?notify=true"

    .restart local v9       #uriStr:Ljava/lang/String;
    goto :goto_0
.end method
