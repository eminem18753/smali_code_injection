.class Lcom/google/android/gms/internal/zzoa$1;
.super Lcom/google/android/gms/internal/zzmz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzoa;->startBleScan(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzZZ:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

.field final synthetic zzaaa:Lcom/google/android/gms/internal/zzoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoa$1;->zzaaa:Lcom/google/android/gms/internal/zzoa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoa$1;->zzZZ:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmz$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoa$1;->zza(Lcom/google/android/gms/internal/zzmz;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzoh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzoh;-><init>(Lcom/google/android/gms/common/api/zza$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmz;->zzjb()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zznj;

    new-instance v2, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoa$1;->zzZZ:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/internal/zznv;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zznj;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
