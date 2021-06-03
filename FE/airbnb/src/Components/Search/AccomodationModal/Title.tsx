import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const Title = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.title ? <S.Title>{accomodation.title}</S.Title> : null;
};

export default Title;
