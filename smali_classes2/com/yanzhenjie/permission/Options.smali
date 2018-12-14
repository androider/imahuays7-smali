.class public Lcom/yanzhenjie/permission/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;,
        Lcom/yanzhenjie/permission/Options$InstallRequestFactory;
    }
.end annotation


# static fields
.field private static final INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$InstallRequestFactory;

.field private static final OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/yanzhenjie/permission/install/ORequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/install/ORequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Options;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$InstallRequestFactory;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/yanzhenjie/permission/install/NRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/install/NRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Options;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$InstallRequestFactory;

    .line 45
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Lcom/yanzhenjie/permission/overlay/MRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/overlay/MRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Options;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;

    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Lcom/yanzhenjie/permission/overlay/LRequestFactory;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/overlay/LRequestFactory;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/Options;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/yanzhenjie/permission/Options;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public install()Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 2

    .line 103
    sget-object v0, Lcom/yanzhenjie/permission/Options;->INSTALL_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$InstallRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Options;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Options$InstallRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/install/InstallRequest;

    move-result-object v0

    return-object v0
.end method

.method public overlay()Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 2

    .line 110
    sget-object v0, Lcom/yanzhenjie/permission/Options;->OVERLAY_REQUEST_FACTORY:Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Options;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Options$OverlayRequestFactory;->create(Lcom/yanzhenjie/permission/source/Source;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;

    move-result-object v0

    return-object v0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/runtime/Runtime;->permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs permission([[Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/Options;->runtime()Lcom/yanzhenjie/permission/runtime/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/runtime/Runtime;->permission([[Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;

    move-result-object p1

    return-object p1
.end method

.method public runtime()Lcom/yanzhenjie/permission/runtime/Runtime;
    .locals 2

    .line 96
    new-instance v0, Lcom/yanzhenjie/permission/runtime/Runtime;

    iget-object v1, p0, Lcom/yanzhenjie/permission/Options;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/Runtime;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    return-object v0
.end method
