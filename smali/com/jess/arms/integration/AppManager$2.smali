.class Lcom/jess/arms/integration/AppManager$2;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/integration/AppManager;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jess/arms/integration/AppManager;


# direct methods
.method constructor <init>(Lcom/jess/arms/integration/AppManager;Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/jess/arms/integration/AppManager$2;->b:Lcom/jess/arms/integration/AppManager;

    iput-object p2, p0, Lcom/jess/arms/integration/AppManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager$2;->b:Lcom/jess/arms/integration/AppManager;

    invoke-static {v0}, Lcom/jess/arms/integration/AppManager;->access$000(Lcom/jess/arms/integration/AppManager;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/integration/AppManager$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
