.class Lorg/seamless/swing/logging/LogCategorySelector$2;
.super Ljava/lang/Object;
.source "LogCategorySelector.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogCategorySelector;->addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogCategorySelector;

.field final synthetic val$categoryPanel:Ljavax/swing/JPanel;

.field final synthetic val$logCategory:Lorg/seamless/swing/logging/LogCategory;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    iput-object p2, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    iput-object p3, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory;->getGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 104
    iget-object v1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    invoke-virtual {v1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->enableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {p1}, Ljavax/swing/JPanel;->removeAll()V

    .line 107
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    iget-object v1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {p1, v0, v1}, Lorg/seamless/swing/logging/LogCategorySelector;->addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 108
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    invoke-virtual {p1}, Ljavax/swing/JPanel;->revalidate()V

    return-void
.end method
