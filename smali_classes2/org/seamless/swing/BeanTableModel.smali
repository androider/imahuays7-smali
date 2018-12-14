.class public Lorg/seamless/swing/BeanTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "BeanTableModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/swing/table/AbstractTableModel;"
    }
.end annotation


# instance fields
.field private beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/seamless/swing/BeanTableModel;->beanClass:Ljava/lang/Class;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 70
    :try_start_0
    new-instance v0, Ljava/beans/PropertyDescriptor;

    iget-object v1, p0, Lorg/seamless/swing/BeanTableModel;->beanClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, p2, v2}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p1}, Ljava/beans/PropertyDescriptor;->setDisplayName(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addRow(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lorg/seamless/swing/BeanTableModel;->getRowCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lorg/seamless/swing/BeanTableModel;->getRowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/seamless/swing/BeanTableModel;->fireTableRowsInserted(II)V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/beans/PropertyDescriptor;

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/beans/PropertyDescriptor;

    .line 58
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public removeRow(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1, p1}, Lorg/seamless/swing/BeanTableModel;->fireTableRowsDeleted(II)V

    :cond_0
    return-void
.end method

.method public resetColumns()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/BeanTableModel;->properties:Ljava/util/List;

    return-void
.end method

.method public setRow(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lorg/seamless/swing/BeanTableModel;->fireTableDataChanged()V

    return-void
.end method

.method public setRows(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/seamless/swing/BeanTableModel;->rows:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lorg/seamless/swing/BeanTableModel;->fireTableDataChanged()V

    return-void
.end method
