.class public Lcom/xiaomi/mipush/sdk/MiPushClient$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageItemInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;->a:Landroid/content/pm/PackageItemInfo;

    return-void
.end method
