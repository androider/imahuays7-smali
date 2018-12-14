.class Lcom/taobao/accs/init/Launcher_InitAccs$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/init/Launcher_InitAccs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    return-object v0
.end method
