.class public Lorg/seamless/swing/AbstractController;
.super Ljava/lang/Object;
.source "AbstractController.java"

# interfaces
.implements Lorg/seamless/swing/Controller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/awt/Container;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/seamless/swing/Controller<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/seamless/swing/DefaultAction;",
            ">;"
        }
    .end annotation
.end field

.field private eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lorg/seamless/swing/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private parentController:Lorg/seamless/swing/Controller;

.field private subControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private view:Ljava/awt/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/seamless/swing/AbstractController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Container;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lorg/seamless/swing/AbstractController;->view:Ljava/awt/Container;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Container;Lorg/seamless/swing/Controller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/seamless/swing/Controller;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lorg/seamless/swing/AbstractController;->view:Ljava/awt/Container;

    if-eqz p2, :cond_0

    .line 77
    iput-object p2, p0, Lorg/seamless/swing/AbstractController;->parentController:Lorg/seamless/swing/Controller;

    .line 78
    invoke-interface {p2}, Lorg/seamless/swing/Controller;->getSubControllers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/seamless/swing/Controller;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, p1}, Lorg/seamless/swing/AbstractController;-><init>(Ljava/awt/Container;Lorg/seamless/swing/Controller;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5

    .line 215
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/AbstractButton;

    .line 216
    invoke-virtual {v0}, Ljavax/swing/AbstractButton;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/DefaultAction;

    if-eqz v1, :cond_0

    .line 221
    sget-object v2, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with action: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    :try_start_1
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->preActionExecute()V

    .line 224
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v2, "Dispatching to action for execution"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, p0, p1}, Lorg/seamless/swing/DefaultAction;->executeInController(Lorg/seamless/swing/Controller;Ljava/awt/event/ActionEvent;)V

    .line 226
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->postActionExecute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->finalActionExecute()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    :try_start_3
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->failedActionExecute()V

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 228
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->failedActionExecute()V

    .line 229
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->finalActionExecute()V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getParentController()Lorg/seamless/swing/Controller;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v1, "Passing action on to parent controller"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->parentController:Lorg/seamless/swing/Controller;

    invoke-interface {v0, p1}, Lorg/seamless/swing/Controller;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    :goto_1
    return-void

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nobody is responsible for action command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    .line 247
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action source is not an Abstractbutton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deregisterAction(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 100
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v1, "Disposing controller"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/Controller;

    .line 104
    invoke-interface {v1}, Lorg/seamless/swing/Controller;->dispose()V

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public failedActionExecute()V
    .locals 0

    return-void
.end method

.method public finalActionExecute()V
    .locals 0

    return-void
.end method

.method public fireEvent(Lorg/seamless/swing/Event;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Lorg/seamless/swing/AbstractController;->fireEvent(Lorg/seamless/swing/Event;Z)V

    return-void
.end method

.method public fireEvent(Lorg/seamless/swing/Event;Z)V
    .locals 5

    .line 177
    invoke-interface {p1, p0}, Lorg/seamless/swing/Event;->alreadyFired(Lorg/seamless/swing/Controller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v1, "Event has not been fired already"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have listeners for this type of event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/EventListener;

    .line 182
    sget-object v2, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 183
    invoke-interface {v1, p1}, Lorg/seamless/swing/EventListener;->handleEvent(Lorg/seamless/swing/Event;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p1, p0}, Lorg/seamless/swing/Event;->addFiredInController(Lorg/seamless/swing/Controller;)V

    .line 187
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passing event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DOWN in the controller hierarchy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/Controller;

    invoke-interface {v1, p1, p2}, Lorg/seamless/swing/Controller;->fireEvent(Lorg/seamless/swing/Event;Z)V

    goto :goto_1

    .line 190
    :cond_1
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v1, "Event already fired here, ignoring..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 192
    :cond_2
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getParentController()Lorg/seamless/swing/Controller;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getParentController()Lorg/seamless/swing/Controller;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/seamless/swing/Event;->alreadyFired(Lorg/seamless/swing/Controller;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 195
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passing event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UP in the controller hierarchy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getParentController()Lorg/seamless/swing/Controller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/seamless/swing/Controller;->fireEvent(Lorg/seamless/swing/Event;Z)V

    goto :goto_2

    .line 198
    :cond_3
    sget-object p1, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    const-string p2, "Event does not propagate up the tree from here"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public fireEventGlobal(Lorg/seamless/swing/Event;)V
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Lorg/seamless/swing/AbstractController;->fireEvent(Lorg/seamless/swing/Event;Z)V

    return-void
.end method

.method public getParentController()Lorg/seamless/swing/Controller;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->parentController:Lorg/seamless/swing/Controller;

    return-object v0
.end method

.method public getSubControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/Controller;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->subControllers:Ljava/util/List;

    return-object v0
.end method

.method public getView()Ljava/awt/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->view:Ljava/awt/Container;

    return-object v0
.end method

.method public postActionExecute()V
    .locals 0

    return-void
.end method

.method public preActionExecute()V
    .locals 0

    return-void
.end method

.method public registerAction(Ljavax/swing/AbstractButton;Ljava/lang/String;Lorg/seamless/swing/DefaultAction;)V
    .locals 0

    .line 129
    invoke-virtual {p1, p2}, Ljavax/swing/AbstractButton;->setActionCommand(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1, p3}, Lorg/seamless/swing/AbstractController;->registerAction(Ljavax/swing/AbstractButton;Lorg/seamless/swing/DefaultAction;)V

    return-void
.end method

.method public registerAction(Ljavax/swing/AbstractButton;Lorg/seamless/swing/DefaultAction;)V
    .locals 1

    .line 116
    invoke-virtual {p1, p0}, Ljavax/swing/AbstractButton;->removeActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    invoke-virtual {p1, p0}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 118
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->actions:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/swing/AbstractButton;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerEventListener(Ljava/lang/Class;Lorg/seamless/swing/EventListener;)V
    .locals 3

    .line 144
    sget-object v0, Lorg/seamless/swing/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p2, p0, Lorg/seamless/swing/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public windowActivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosed(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->dispose()V

    .line 267
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    move-result-object p1

    check-cast p1, Ljavax/swing/JFrame;

    invoke-virtual {p1}, Ljavax/swing/JFrame;->dispose()V

    return-void
.end method

.method public windowDeactivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowDeiconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowIconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowOpened(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method
