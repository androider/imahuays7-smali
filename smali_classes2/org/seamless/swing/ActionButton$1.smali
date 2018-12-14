.class Lorg/seamless/swing/ActionButton$1;
.super Lorg/seamless/swing/DefaultAction;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/ActionButton;->enableDefaultEvents(Lorg/seamless/swing/Controller;)Lorg/seamless/swing/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/ActionButton;

.field final synthetic val$controller:Lorg/seamless/swing/Controller;


# direct methods
.method constructor <init>(Lorg/seamless/swing/ActionButton;Lorg/seamless/swing/Controller;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    iput-object p2, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    invoke-direct {p0}, Lorg/seamless/swing/DefaultAction;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    invoke-virtual {p1}, Lorg/seamless/swing/ActionButton;->createDefaultEvent()Lorg/seamless/swing/Event;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    invoke-interface {v0, p1}, Lorg/seamless/swing/Controller;->fireEvent(Lorg/seamless/swing/Event;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    invoke-virtual {p1}, Lorg/seamless/swing/ActionButton;->createDefaultGlobalEvent()Lorg/seamless/swing/Event;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    invoke-interface {v0, p1}, Lorg/seamless/swing/Controller;->fireEventGlobal(Lorg/seamless/swing/Event;)V

    :cond_1
    return-void
.end method
