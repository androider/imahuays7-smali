.class public Lcom/yanzhenjie/permission/AndPermission;
.super Ljava/lang/Object;
.source "AndPermission.java"


# static fields
.field private static final PERMISSION_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/yanzhenjie/permission/checker/StandardChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StandardChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/AndPermission;->PERMISSION_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileUri(Landroid/app/Fragment;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 289
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".file.path.share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/yanzhenjie/permission/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 303
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getFileUri(Landroid/support/v4/app/Fragment;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasAlwaysDeniedPermission(Landroid/app/Fragment;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/yanzhenjie/permission/source/FragmentSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/FragmentSource;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasAlwaysDeniedPermission(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 1

    .line 133
    new-instance v0, Lcom/yanzhenjie/permission/source/FragmentSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/FragmentSource;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAlwaysDeniedPermission(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasAlwaysDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    .line 144
    new-instance v0, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAlwaysDeniedPermission(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/yanzhenjie/permission/source/SupportFragmentSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/SupportFragmentSource;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasAlwaysDeniedPermission(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 1

    .line 122
    new-instance v0, Lcom/yanzhenjie/permission/source/SupportFragmentSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/SupportFragmentSource;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/source/Source;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/permission/source/Source;->isShowRationalePermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs hasAlwaysDeniedPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Z
    .locals 4

    .line 151
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 152
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/permission/source/Source;->isShowRationalePermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs hasPermissions(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasPermissions(Landroid/app/Fragment;[[Ljava/lang/String;)Z
    .locals 0

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasPermissions(Landroid/content/Context;[[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    .line 230
    sget-object v0, Lcom/yanzhenjie/permission/AndPermission;->PERMISSION_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    invoke-interface {v0, p0, p1}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[[Ljava/lang/String;)Z
    .locals 5

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 264
    sget-object v4, Lcom/yanzhenjie/permission/AndPermission;->PERMISSION_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    invoke-interface {v4, p0, v3}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs hasPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasPermissions(Landroid/support/v4/app/Fragment;[[Ljava/lang/String;)Z
    .locals 0

    .line 241
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yanzhenjie/permission/AndPermission;->hasPermissions(Landroid/content/Context;[[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static permissionSetting(Landroid/app/Fragment;)Lcom/yanzhenjie/permission/Setting;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/app/Fragment;)Lcom/yanzhenjie/permission/Options;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/Runtime;->setting()Lcom/yanzhenjie/permission/Setting;

    move-result-object p0

    return-object p0
.end method

.method public static permissionSetting(Landroid/content/Context;)Lcom/yanzhenjie/permission/Setting;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/content/Context;)Lcom/yanzhenjie/permission/Options;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/Runtime;->setting()Lcom/yanzhenjie/permission/Setting;

    move-result-object p0

    return-object p0
.end method

.method public static permissionSetting(Landroid/support/v4/app/Fragment;)Lcom/yanzhenjie/permission/Setting;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/yanzhenjie/permission/AndPermission;->with(Landroid/support/v4/app/Fragment;)Lcom/yanzhenjie/permission/Options;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/Runtime;->setting()Lcom/yanzhenjie/permission/Setting;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/yanzhenjie/permission/Options;
    .locals 2

    .line 56
    new-instance v0, Lcom/yanzhenjie/permission/Options;

    new-instance v1, Lcom/yanzhenjie/permission/source/FragmentSource;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/source/FragmentSource;-><init>(Landroid/app/Fragment;)V

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/Options;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/yanzhenjie/permission/Options;
    .locals 2

    .line 66
    new-instance v0, Lcom/yanzhenjie/permission/Options;

    new-instance v1, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/Options;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/yanzhenjie/permission/Options;
    .locals 2

    .line 46
    new-instance v0, Lcom/yanzhenjie/permission/Options;

    new-instance v1, Lcom/yanzhenjie/permission/source/SupportFragmentSource;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/source/SupportFragmentSource;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/Options;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
