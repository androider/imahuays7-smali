.class public Lcom/yanzhenjie/permission/runtime/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;

.field private static sManifestPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/yanzhenjie/permission/runtime/MRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/runtime/MRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Runtime;->FACTORY:Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/yanzhenjie/permission/runtime/LRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/runtime/LRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Runtime;->FACTORY:Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/Runtime;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method private varargs checkPermissions([Ljava/lang/String;)V
    .locals 5

    .line 96
    sget-object v0, Lcom/yanzhenjie/permission/runtime/Runtime;->sManifestPermissions:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/Runtime;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/runtime/Runtime;->getManifestPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/runtime/Runtime;->sManifestPermissions:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_4

    .line 98
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 103
    sget-object v4, Lcom/yanzhenjie/permission/runtime/Runtime;->sManifestPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The permission %1$s is not registered in manifest.xml"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 99
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please enter at least one permission."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getManifestPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 115
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 116
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 117
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You did not register any permissions in the manifest.xml."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Package name cannot be found."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public varargs permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/runtime/Runtime;->checkPermissions([Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/yanzhenjie/permission/runtime/Runtime;->FACTORY:Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/Runtime;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/runtime/Runtime$PermissionRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yanzhenjie/permission/runtime/PermissionRequest;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs permission([[Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 4

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 75
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/permission/runtime/Runtime;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p1

    return-object p1
.end method

.method public setting()Lcom/yanzhenjie/permission/Setting;
    .locals 2

    .line 85
    new-instance v0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/Runtime;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
