.class public Lorg/seamless/swing/ClosableTabbedPane;
.super Ljavax/swing/JTabbedPane;
.source "ClosableTabbedPane.java"

# interfaces
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/MouseMotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;,
        Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;,
        Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;
    }
.end annotation


# instance fields
.field private headerViewport:Ljavax/swing/JViewport;

.field private hooverCloseIcon:Ljavax/swing/Icon;

.field private listenerList:Ljavax/swing/event/EventListenerList;

.field private normalCloseIcon:Ljavax/swing/Icon;

.field private pressedCloseIcon:Ljavax/swing/Icon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 45
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 50
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 55
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 60
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    const/4 v0, 0x2

    .line 67
    invoke-direct {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 45
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 50
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 55
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 60
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 78
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->init(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    return-object p0
.end method

.method static synthetic access$300(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    return-object p0
.end method

.method static synthetic access$400(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    return-object p0
.end method

.method private init(I)V
    .locals 1

    .line 88
    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 89
    invoke-virtual {p0, p0}, Lorg/seamless/swing/ClosableTabbedPane;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 90
    invoke-virtual {p0, p0}, Lorg/seamless/swing/ClosableTabbedPane;->addMouseMotionListener(Ljava/awt/event/MouseMotionListener;)V

    .line 92
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v0

    instance-of v0, v0, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;

    invoke-direct {v0, p0, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;-><init>(Lorg/seamless/swing/ClosableTabbedPane;I)V

    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;

    invoke-direct {v0, p0, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;-><init>(Lorg/seamless/swing/ClosableTabbedPane;I)V

    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    :goto_0
    return-void
.end method

.method private processMouseEvents(Ljava/awt/event/MouseEvent;)V
    .locals 21

    move-object/from16 v0, p0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljavax/swing/plaf/TabbedPaneUI;->tabForCoordinate(Ljavax/swing/JTabbedPane;II)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {v0, v1}, Lorg/seamless/swing/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    if-eqz v1, :cond_a

    .line 236
    invoke-virtual {v1}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    .line 237
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    if-nez v3, :cond_1

    new-instance v3, Ljava/awt/Point;

    invoke-direct {v3}, Ljava/awt/Point;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    invoke-virtual {v3}, Ljavax/swing/JViewport;->getViewPosition()Ljava/awt/Point;

    move-result-object v3

    .line 239
    :goto_0
    new-instance v4, Ljava/awt/Rectangle;

    iget v5, v2, Ljava/awt/Rectangle;->x:I

    iget v6, v3, Ljava/awt/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, v2, Ljava/awt/Rectangle;->y:I

    iget v7, v3, Ljava/awt/Point;->y:I

    sub-int/2addr v6, v7

    iget v7, v2, Ljava/awt/Rectangle;->width:I

    iget v8, v2, Ljava/awt/Rectangle;->height:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    const/16 v6, 0x1f5

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_3

    .line 243
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v2

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 244
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    goto/16 :goto_2

    .line 245
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    const/16 v6, 0x1f7

    const/16 v10, 0x1f4

    if-eq v5, v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    const/16 v6, 0x1fa

    if-eq v5, v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    if-ne v5, v10, :cond_a

    .line 247
    :cond_4
    iget v5, v3, Ljava/awt/Point;->x:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Ljava/awt/Point;->x:I

    .line 248
    iget v5, v3, Ljava/awt/Point;->y:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Ljava/awt/Point;->y:I

    .line 249
    invoke-virtual {v2, v3}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 250
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v2

    if-ne v2, v10, :cond_7

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/seamless/swing/ClosableTabbedPane;->getSelectedIndex()I

    move-result v2

    .line 252
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane;->fireCloseTab(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez v2, :cond_5

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    move-result-object v1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v0, v3}, Ljavax/swing/plaf/TabbedPaneUI;->getTabBounds(Ljavax/swing/JTabbedPane;I)Ljava/awt/Rectangle;

    move-result-object v1

    .line 257
    new-instance v3, Ljava/awt/event/MouseEvent;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/awt/Component;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    move-result v5

    add-int/lit8 v12, v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v15

    iget v5, v1, Ljava/awt/Rectangle;->x:I

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getButton()I

    move-result v20

    move-object v10, v3

    move/from16 v16, v5

    move/from16 v17, v1

    invoke-direct/range {v10 .. v20}, Ljava/awt/event/MouseEvent;-><init>(Ljava/awt/Component;IJIIIIZI)V

    .line 266
    invoke-virtual {v0, v3}, Lorg/seamless/swing/ClosableTabbedPane;->dispatchEvent(Ljava/awt/AWTEvent;)V

    .line 270
    :cond_5
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane;->remove(I)V

    goto :goto_1

    .line 272
    :cond_6
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 273
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 274
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    goto :goto_1

    .line 277
    :cond_7
    invoke-static {v1, v9}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v2

    if-ne v2, v7, :cond_8

    const/4 v8, 0x1

    :cond_8
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    goto :goto_1

    .line 281
    :cond_9
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 283
    :goto_1
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public addCloseableTabbedPaneListener(Lorg/seamless/swing/ClosableTabbedPaneListener;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lorg/seamless/swing/ClosableTabbedPane;->addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V
    .locals 3

    const/4 v0, 0x1

    .line 132
    :try_start_0
    move-object v1, p2

    check-cast v1, Ljavax/swing/JComponent;

    const-string v2, "isClosable"

    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    invoke-direct {v0, p0, p3}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;-><init>(Lorg/seamless/swing/ClosableTabbedPane;Ljavax/swing/Icon;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, v0, p2}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;)V

    .line 142
    iget-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    if-nez p1, :cond_3

    .line 143
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getComponents()[Ljava/awt/Component;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object v0, p1, p3

    const-string v1, "TabbedPane.scrollableViewport"

    .line 144
    invoke-virtual {v0}, Ljava/awt/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    check-cast v0, Ljavax/swing/JViewport;

    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected fireCloseTab(I)Z
    .locals 6

    .line 327
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 328
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 329
    instance-of v5, v4, Lorg/seamless/swing/ClosableTabbedPaneListener;

    if-eqz v5, :cond_0

    .line 330
    check-cast v4, Lorg/seamless/swing/ClosableTabbedPaneListener;

    invoke-interface {v4, p1}, Lorg/seamless/swing/ClosableTabbedPaneListener;->closeTab(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public getCloseableTabbedPaneListener()[Lorg/seamless/swing/ClosableTabbedPaneListener;
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1}, Ljavax/swing/event/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/seamless/swing/ClosableTabbedPaneListener;

    return-object v0
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseDragged(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 175
    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    if-eqz v1, :cond_0

    .line 177
    invoke-static {v1, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->repaint()V

    return-void
.end method

.method public mouseMoved(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public removeCloseableTabbedPaneListener(Lorg/seamless/swing/ClosableTabbedPaneListener;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setCloseIcons(Ljavax/swing/Icon;Ljavax/swing/Icon;Ljavax/swing/Icon;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 107
    iput-object p2, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 108
    iput-object p3, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    return-void
.end method
