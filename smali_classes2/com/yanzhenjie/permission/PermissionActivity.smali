.class public final Lcom/yanzhenjie/permission/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;
    }
.end annotation


# static fields
.field private static final KEY_INPUT_OPERATION:Ljava/lang/String; = "KEY_INPUT_OPERATION"

.field private static final KEY_INPUT_PERMISSIONS:Ljava/lang/String; = "KEY_INPUT_PERMISSIONS"

.field private static final VALUE_INPUT_ALERT_WINDOW:I = 0x5

.field private static final VALUE_INPUT_INSTALL:I = 0x3

.field private static final VALUE_INPUT_OVERLAY:I = 0x4

.field private static final VALUE_INPUT_PERMISSION:I = 0x1

.field private static final VALUE_INPUT_PERMISSION_SETTING:I = 0x2

.field private static sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static permissionSetting(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V
    .locals 2

    .line 67
    sput-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yanzhenjie/permission/PermissionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x2

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestAlertWindow(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V
    .locals 2

    .line 103
    sput-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yanzhenjie/permission/PermissionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x5

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestInstall(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V
    .locals 2

    .line 79
    sput-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yanzhenjie/permission/PermissionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x3

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestOverlay(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V
    .locals 2

    .line 91
    sput-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yanzhenjie/permission/PermissionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x4

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V
    .locals 2

    .line 54
    sput-object p2, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 56
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/yanzhenjie/permission/PermissionActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "KEY_INPUT_PERMISSIONS"

    .line 58
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    sput-object v0, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 179
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_0

    .line 180
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    invoke-interface {p1}, Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;->onRequestCallback()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_INPUT_OPERATION"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "This should not be the case."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 155
    :pswitch_0
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_0

    .line 156
    new-instance p1, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;

    new-instance v0, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v0, 0x5

    .line 157
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->start(I)V

    goto/16 :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    goto :goto_0

    .line 146
    :pswitch_1
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_1

    .line 147
    new-instance p1, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;

    new-instance v0, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v0, 0x4

    .line 148
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->start(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_2
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_2

    .line 137
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 138
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/permission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    goto :goto_0

    .line 127
    :pswitch_3
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_3

    .line 128
    new-instance p1, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;

    new-instance v0, Lcom/yanzhenjie/permission/source/ContextSource;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/source/ContextSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v0, 0x2

    .line 129
    invoke-virtual {p1, v0}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;->start(I)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    goto :goto_0

    :pswitch_4
    const-string v0, "KEY_INPUT_PERMISSIONS"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 119
    sget-object v0, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/permission/PermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 171
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    if-eqz p1, :cond_0

    .line 172
    sget-object p1, Lcom/yanzhenjie/permission/PermissionActivity;->sRequestListener:Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;

    invoke-interface {p1}, Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;->onRequestCallback()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/PermissionActivity;->finish()V

    return-void
.end method
