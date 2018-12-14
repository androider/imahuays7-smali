.class public Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$permissCallBack;,
        Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;,
        Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;
    }
.end annotation


# static fields
.field public static final CAMERA:[Ljava/lang/String;

.field public static final EXTERNAL_GROUP:[Ljava/lang/String;

.field public static final INSTALL:[Ljava/lang/String;

.field public static final PERMISSIONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Permission"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 34
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->PERMISSIONS:[Ljava/lang/String;

    .line 48
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    sput-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->EXTERNAL_GROUP:[Ljava/lang/String;

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->CAMERA:[Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->INSTALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->showPermissionSettingDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static callPhone(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V
    .locals 3

    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method public static checkNotificationPermission(Landroid/content/Context;)V
    .locals 3

    .line 262
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->isNotificationEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    .line 266
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u901a\u77e5\u6743\u9650\u66f4\u65b0\u8fdb\u5ea6\u53ef\u80fd\u65e0\u6cd5\u5728\u72b6\u6001\u680f\u663e\u793a\u3002\n\u8bf7\u524d\u5f80\"\u8bbe\u7f6e\"-\"\u6743\u9650\u7ba1\u7406\"-\u6253\u5f00\u901a\u77e5\u6743\u9650\u3002"

    .line 267
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u524d\u5f80\u8bbe\u7f6e"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$0;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u4e0b\u6b21\u518d\u8bf4"

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$1;->$instance:Landroid/content/DialogInterface$OnClickListener;

    .line 270
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public static externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V
    .locals 1

    .line 152
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->EXTERNAL_GROUP:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 207
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 190
    invoke-static {p0, v3}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v3
.end method

.method public static isNotificationEnable(Landroid/content/Context;)Z
    .locals 10
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "appops"

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 220
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    .line 225
    :try_start_0
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "checkOpNoThrow"

    const/4 v6, 0x3

    .line 226
    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "OP_POST_NOTIFICATION"

    .line 228
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 230
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 231
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    aput-object p0, v6, v9

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 242
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 240
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 238
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 236
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 234
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return v3
.end method

.method static final synthetic lambda$checkNotificationPermission$0$PermissionUtils(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 269
    invoke-static {p0, p1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static final synthetic lambda$checkNotificationPermission$1$PermissionUtils(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$showPmsExternalStorage$2$PermissionUtils(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 281
    invoke-static {p0, p1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static final synthetic lambda$showPmsExternalStorage$3$PermissionUtils(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static launchCamera(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->CAMERA:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method public static luncherloadService(Landroid/content/Context;Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;)V
    .locals 2

    .line 249
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->checkNotificationPermission(Landroid/content/Context;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "receiver"

    .line 256
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "APK_DOWNLOAD_URL_KEY"

    .line 257
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static readPhonestate(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V
    .locals 3

    const/4 v0, 0x1

    .line 176
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/content/Context;)Lcom/yanzhenjie/permission/Options;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/permission/runtime/Runtime;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p0

    new-instance p2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$2;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$2;-><init>(Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    .line 102
    invoke-interface {p0, p2}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p0

    new-instance p2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$1;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    .line 108
    invoke-interface {p0, p2}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->start()V

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;

    invoke-direct {v0, p2, p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;-><init>(Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;Landroid/content/Context;)V

    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method public static sendSms(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V
    .locals 3

    const/4 v0, 0x1

    .line 160
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method private static showPermissionSettingDialog(Landroid/content/Context;)V
    .locals 3

    .line 304
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$string;->permission_guide:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$5;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$5;-><init>()V

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$4;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public static showPmsExternalStorage(Landroid/content/Context;)V
    .locals 3

    .line 277
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    .line 278
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6743\u9650\u7f3a\u5931\u53ef\u80fd\u5bfc\u81f4\u6b64\u529f\u80fd\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528\u3002\n\u8bf7\u524d\u5f80\"\u8bbe\u7f6e\"-\"\u6743\u9650\u7ba1\u7406\"-\u8bf7\u6c42\u5916\u90e8\u5b58\u50a8\u7684\u6743\u9650\u3002"

    .line 279
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$2;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u9000\u51fa"

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$$Lambda$3;->$instance:Landroid/content/DialogInterface$OnClickListener;

    .line 282
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
