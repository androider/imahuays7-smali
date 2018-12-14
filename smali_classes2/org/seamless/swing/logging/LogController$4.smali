.class Lorg/seamless/swing/logging/LogController$4;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogController;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    move-result-object p1

    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getParentWindow()Ljava/awt/Frame;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;

    .line 208
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    move-result-object p1

    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogCategorySelector;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->setVisible(Z)V

    return-void
.end method
