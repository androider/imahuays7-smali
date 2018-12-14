.class Lcom/mh/movie/core/mvp/ui/widget/InputDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/InputDialog;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 104
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
