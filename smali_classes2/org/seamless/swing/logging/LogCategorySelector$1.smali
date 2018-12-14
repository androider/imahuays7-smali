.class Lorg/seamless/swing/logging/LogCategorySelector$1;
.super Ljava/lang/Object;
.source "LogCategorySelector.java"

# interfaces
.implements Ljava/awt/event/ItemListener;


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

.field final synthetic val$group:Lorg/seamless/swing/logging/LogCategory$Group;


# direct methods
.method constructor <init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory$Group;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    iput-object p2, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemStateChanged(Ljava/awt/event/ItemEvent;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/awt/event/ItemEvent;->getStateChange()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->disableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/ItemEvent;->getStateChange()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->enableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    :cond_1
    :goto_0
    return-void
.end method
