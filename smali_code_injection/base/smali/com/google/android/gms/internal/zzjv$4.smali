.class Lcom/google/android/gms/internal/zzjv$4;
.super Lcom/google/android/gms/internal/zzit$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjv;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaef:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic zzaej:Lcom/google/android/gms/internal/zzjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjv;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjv$4;->zzaej:Lcom/google/android/gms/internal/zzjv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjv$4;->zzaef:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzit$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzit;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjv$4;->zza(Lcom/google/android/gms/internal/zzit;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzjy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzit;->zzlX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzje;

    new-instance v3, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjv$4;->zzaef:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzjm;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzje;->zza(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)V

    return-void
.end method
