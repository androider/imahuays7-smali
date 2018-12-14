.class public Lcom/lib/MipushActivity;
.super Lcom/umeng/message/m;
.source "MipushActivity.java"


# static fields
.field private static a:Ljava/lang/String; = "com.lib.MipushActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/umeng/message/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/umeng/message/m;->a(Landroid/content/Intent;)V

    const-string v0, "body"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v0, Lcom/lib/MipushActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/umeng/message/m;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0038

    .line 23
    invoke-virtual {p0, p1}, Lcom/lib/MipushActivity;->setContentView(I)V

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/lib/MipushActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
