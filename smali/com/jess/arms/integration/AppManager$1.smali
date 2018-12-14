.class Lcom/jess/arms/integration/AppManager$1;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/integration/AppManager;->showSnackbar(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/jess/arms/integration/AppManager;


# direct methods
.method constructor <init>(Lcom/jess/arms/integration/AppManager;Ljava/lang/String;Z)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/jess/arms/integration/AppManager$1;->c:Lcom/jess/arms/integration/AppManager;

    iput-object p2, p0, Lcom/jess/arms/integration/AppManager$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/jess/arms/integration/AppManager$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    sget-boolean v0, Lcom/jess/arms/a/j;->b:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager$1;->c:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/integration/AppManager$1;->c:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager$1;->c:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/jess/arms/integration/AppManager$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/jess/arms/integration/AppManager$1;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_2

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/jess/arms/integration/AppManager$1;->c:Lcom/jess/arms/integration/AppManager;

    invoke-static {v0}, Lcom/jess/arms/integration/AppManager;->access$000(Lcom/jess/arms/integration/AppManager;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/integration/AppManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
